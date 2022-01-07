
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qed_iwarp_ll2_buff {int data_phys_addr; int data; int buff_size; } ;
struct qed_hwfn {TYPE_2__* cdev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (struct qed_iwarp_ll2_buff*) ;

__attribute__((used)) static void qed_iwarp_ll2_rel_rx_pkt(void *cxt, u8 connection_handle,
         void *cookie, dma_addr_t rx_buf_addr,
         bool b_last_packet)
{
 struct qed_iwarp_ll2_buff *buffer = cookie;
 struct qed_hwfn *p_hwfn = cxt;

 dma_free_coherent(&p_hwfn->cdev->pdev->dev, buffer->buff_size,
     buffer->data, buffer->data_phys_addr);
 kfree(buffer);
}
