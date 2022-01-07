
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt3_board {TYPE_3__* pdev; } ;
struct TYPE_5__ {struct pt3_board* priv; } ;
struct pt3_adapter {int num_bufs; int num_desc_bufs; TYPE_4__* desc_buf; TYPE_2__* buffer; TYPE_1__ dvb_adap; } ;
struct TYPE_8__ {int b_addr; int descs; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int b_addr; int data; } ;


 int DATA_BUF_SZ ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;

void pt3_free_dmabuf(struct pt3_adapter *adap)
{
 struct pt3_board *pt3;
 int i;

 pt3 = adap->dvb_adap.priv;
 for (i = 0; i < adap->num_bufs; i++)
  dma_free_coherent(&pt3->pdev->dev, DATA_BUF_SZ,
   adap->buffer[i].data, adap->buffer[i].b_addr);
 adap->num_bufs = 0;

 for (i = 0; i < adap->num_desc_bufs; i++)
  dma_free_coherent(&pt3->pdev->dev, PAGE_SIZE,
   adap->desc_buf[i].descs, adap->desc_buf[i].b_addr);
 adap->num_desc_bufs = 0;
}
