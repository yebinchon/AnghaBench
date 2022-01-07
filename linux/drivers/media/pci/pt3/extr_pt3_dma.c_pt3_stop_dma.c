
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pt3_board {int* regs; } ;
struct TYPE_2__ {struct pt3_board* priv; } ;
struct pt3_adapter {int adap_idx; TYPE_1__ dvb_adap; } ;


 int EIO ;
 int OFST_DMA_CTL ;
 int OFST_STATUS ;
 int get_dma_base (int ) ;
 int ioread32 (int) ;
 int iowrite32 (int,int) ;
 int msleep (int) ;

int pt3_stop_dma(struct pt3_adapter *adap)
{
 struct pt3_board *pt3 = adap->dvb_adap.priv;
 u32 base;
 u32 stat;
 int retry;

 base = get_dma_base(adap->adap_idx);
 stat = ioread32(pt3->regs[0] + base + OFST_STATUS);
 if (!(stat & 0x01))
  return 0;

 iowrite32(0x02, pt3->regs[0] + base + OFST_DMA_CTL);
 for (retry = 0; retry < 5; retry++) {
  stat = ioread32(pt3->regs[0] + base + OFST_STATUS);
  if (!(stat & 0x01))
   return 0;
  msleep(50);
 }
 return -EIO;
}
