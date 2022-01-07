
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mei_msg_hdr {int dummy; } ;
struct mei_device {int init_clients_timer; int hbm_state; int dev; TYPE_2__* dr_dscr; } ;
struct hbm_dma_setup_request {TYPE_1__* dma_dscr; int hbm_cmd; } ;
typedef int phys_addr_t ;
struct TYPE_4__ {int size; int daddr; } ;
struct TYPE_3__ {int size; int addr_lo; int addr_hi; } ;


 unsigned int DMA_DSCR_NUM ;
 int MEI_CLIENTS_INIT_TIMEOUT ;
 int MEI_HBM_DMA_SETUP_REQ_CMD ;
 int MEI_HBM_DR_SETUP ;
 int dev_err (int ,char*,int) ;
 int lower_32_bits (int ) ;
 int mei_dma_ring_reset (struct mei_device*) ;
 int mei_hbm_hdr (struct mei_msg_hdr*,size_t const) ;
 int mei_hbm_write_message (struct mei_device*,struct mei_msg_hdr*,struct hbm_dma_setup_request*) ;
 int mei_schedule_stall_timer (struct mei_device*) ;
 int memset (struct hbm_dma_setup_request*,int ,size_t const) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int mei_hbm_dma_setup_req(struct mei_device *dev)
{
 struct mei_msg_hdr mei_hdr;
 struct hbm_dma_setup_request req;
 const size_t len = sizeof(struct hbm_dma_setup_request);
 unsigned int i;
 int ret;

 mei_hbm_hdr(&mei_hdr, len);

 memset(&req, 0, len);
 req.hbm_cmd = MEI_HBM_DMA_SETUP_REQ_CMD;
 for (i = 0; i < DMA_DSCR_NUM; i++) {
  phys_addr_t paddr;

  paddr = dev->dr_dscr[i].daddr;
  req.dma_dscr[i].addr_hi = upper_32_bits(paddr);
  req.dma_dscr[i].addr_lo = lower_32_bits(paddr);
  req.dma_dscr[i].size = dev->dr_dscr[i].size;
 }

 mei_dma_ring_reset(dev);

 ret = mei_hbm_write_message(dev, &mei_hdr, &req);
 if (ret) {
  dev_err(dev->dev, "dma setup request write failed: ret = %d.\n",
   ret);
  return ret;
 }

 dev->hbm_state = MEI_HBM_DR_SETUP;
 dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
 mei_schedule_stall_timer(dev);
 return 0;
}
