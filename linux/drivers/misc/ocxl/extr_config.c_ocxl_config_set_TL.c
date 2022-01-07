
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef long u32 ;
struct pci_dev {int devfn; } ;
typedef int __be32 ;


 int ENOMEM ;
 long GENMASK (int,int ) ;
 int GFP_KERNEL ;
 scalar_t__ OCXL_DVSEC_TL_BACKOFF_TIMERS ;
 scalar_t__ OCXL_DVSEC_TL_RECV_CAP ;
 scalar_t__ OCXL_DVSEC_TL_RECV_RATE ;
 scalar_t__ OCXL_DVSEC_TL_SEND_CAP ;
 scalar_t__ OCXL_DVSEC_TL_SEND_RATE ;
 scalar_t__ PCI_FUNC (int ) ;
 int PNV_OCXL_TL_RATE_BUF_SIZE ;
 int __pa (char*) ;
 long be32_to_cpu (int ) ;
 int cpu_to_be32 (long) ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,long*) ;
 int pci_write_config_byte (struct pci_dev*,scalar_t__,int) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,long) ;
 int pnv_ocxl_get_tl_cap (struct pci_dev*,long*,char*,int) ;
 int pnv_ocxl_set_tl_conf (struct pci_dev*,long,int ,int) ;

int ocxl_config_set_TL(struct pci_dev *dev, int tl_dvsec)
{
 u32 val;
 __be32 *be32ptr;
 u8 timers;
 int i, rc;
 long recv_cap;
 char *recv_rate;




 if (PCI_FUNC(dev->devfn) != 0)
  return 0;

 recv_rate = kzalloc(PNV_OCXL_TL_RATE_BUF_SIZE, GFP_KERNEL);
 if (!recv_rate)
  return -ENOMEM;
 rc = pnv_ocxl_get_tl_cap(dev, &recv_cap, recv_rate,
    PNV_OCXL_TL_RATE_BUF_SIZE);
 if (rc)
  goto out;

 for (i = 0; i < PNV_OCXL_TL_RATE_BUF_SIZE; i += 4) {
  be32ptr = (__be32 *) &recv_rate[i];
  pci_write_config_dword(dev,
    tl_dvsec + OCXL_DVSEC_TL_SEND_RATE + i,
    be32_to_cpu(*be32ptr));
 }
 val = recv_cap >> 32;
 pci_write_config_dword(dev, tl_dvsec + OCXL_DVSEC_TL_SEND_CAP, val);
 val = recv_cap & GENMASK(31, 0);
 pci_write_config_dword(dev, tl_dvsec + OCXL_DVSEC_TL_SEND_CAP + 4, val);




 for (i = 0; i < PNV_OCXL_TL_RATE_BUF_SIZE; i += 4) {
  pci_read_config_dword(dev,
    tl_dvsec + OCXL_DVSEC_TL_RECV_RATE + i,
    &val);
  be32ptr = (__be32 *) &recv_rate[i];
  *be32ptr = cpu_to_be32(val);
 }
 pci_read_config_dword(dev, tl_dvsec + OCXL_DVSEC_TL_RECV_CAP, &val);
 recv_cap = (long) val << 32;
 pci_read_config_dword(dev, tl_dvsec + OCXL_DVSEC_TL_RECV_CAP + 4, &val);
 recv_cap |= val;

 rc = pnv_ocxl_set_tl_conf(dev, recv_cap, __pa(recv_rate),
    PNV_OCXL_TL_RATE_BUF_SIZE);
 if (rc)
  goto out;
 timers = 0x2 << 4;
 pci_write_config_byte(dev, tl_dvsec + OCXL_DVSEC_TL_BACKOFF_TIMERS,
   timers);

 rc = 0;
out:
 kfree(recv_rate);
 return rc;
}
