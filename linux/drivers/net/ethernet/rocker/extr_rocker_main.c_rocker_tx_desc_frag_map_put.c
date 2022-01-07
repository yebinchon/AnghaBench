
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int dummy; } ;
struct rocker_port {int dev; struct rocker* rocker; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int EIO ;
 int EMSGSIZE ;
 int ROCKER_TLV_TX_FRAG ;
 int ROCKER_TLV_TX_FRAG_ATTR_ADDR ;
 int ROCKER_TLV_TX_FRAG_ATTR_LEN ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (int ,char*) ;
 int pci_dma_mapping_error (struct pci_dev*,int ) ;
 int pci_map_single (struct pci_dev*,char*,size_t,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,size_t,int ) ;
 int rocker_tlv_nest_cancel (struct rocker_desc_info*,struct rocker_tlv*) ;
 int rocker_tlv_nest_end (struct rocker_desc_info*,struct rocker_tlv*) ;
 struct rocker_tlv* rocker_tlv_nest_start (struct rocker_desc_info*,int ) ;
 scalar_t__ rocker_tlv_put_u16 (struct rocker_desc_info*,int ,size_t) ;
 scalar_t__ rocker_tlv_put_u64 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int rocker_tx_desc_frag_map_put(const struct rocker_port *rocker_port,
           struct rocker_desc_info *desc_info,
           char *buf, size_t buf_len)
{
 const struct rocker *rocker = rocker_port->rocker;
 struct pci_dev *pdev = rocker->pdev;
 dma_addr_t dma_handle;
 struct rocker_tlv *frag;

 dma_handle = pci_map_single(pdev, buf, buf_len, DMA_TO_DEVICE);
 if (unlikely(pci_dma_mapping_error(pdev, dma_handle))) {
  if (net_ratelimit())
   netdev_err(rocker_port->dev, "failed to dma map tx frag\n");
  return -EIO;
 }
 frag = rocker_tlv_nest_start(desc_info, ROCKER_TLV_TX_FRAG);
 if (!frag)
  goto unmap_frag;
 if (rocker_tlv_put_u64(desc_info, ROCKER_TLV_TX_FRAG_ATTR_ADDR,
          dma_handle))
  goto nest_cancel;
 if (rocker_tlv_put_u16(desc_info, ROCKER_TLV_TX_FRAG_ATTR_LEN,
          buf_len))
  goto nest_cancel;
 rocker_tlv_nest_end(desc_info, frag);
 return 0;

nest_cancel:
 rocker_tlv_nest_cancel(desc_info, frag);
unmap_frag:
 pci_unmap_single(pdev, dma_handle, buf_len, DMA_TO_DEVICE);
 return -EMSGSIZE;
}
