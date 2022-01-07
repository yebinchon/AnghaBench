
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
struct hbm_dma_ring_ctrl {int dummy; } ;


 struct hbm_dma_ring_ctrl* mei_dma_ring_ctrl (struct mei_device*) ;
 int memset (struct hbm_dma_ring_ctrl*,int ,int) ;

void mei_dma_ring_reset(struct mei_device *dev)
{
 struct hbm_dma_ring_ctrl *ctrl = mei_dma_ring_ctrl(dev);

 if (!ctrl)
  return;

 memset(ctrl, 0, sizeof(*ctrl));
}
