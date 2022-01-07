
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qed_iwarp_ll2_buff {int buff_size; int data; int data_phys_addr; } ;
struct qed_hwfn {TYPE_2__* cdev; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int kfree (struct qed_iwarp_ll2_buff*) ;
 struct qed_iwarp_ll2_buff* kzalloc (int,int ) ;
 int qed_iwarp_ll2_post_rx (struct qed_hwfn*,struct qed_iwarp_ll2_buff*,int ) ;

__attribute__((used)) static int
qed_iwarp_ll2_alloc_buffers(struct qed_hwfn *p_hwfn,
       int num_rx_bufs, int buff_size, u8 ll2_handle)
{
 struct qed_iwarp_ll2_buff *buffer;
 int rc = 0;
 int i;

 for (i = 0; i < num_rx_bufs; i++) {
  buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
  if (!buffer) {
   rc = -ENOMEM;
   break;
  }

  buffer->data = dma_alloc_coherent(&p_hwfn->cdev->pdev->dev,
        buff_size,
        &buffer->data_phys_addr,
        GFP_KERNEL);
  if (!buffer->data) {
   kfree(buffer);
   rc = -ENOMEM;
   break;
  }

  buffer->buff_size = buff_size;
  rc = qed_iwarp_ll2_post_rx(p_hwfn, buffer, ll2_handle);
  if (rc)

   break;
 }
 return rc;
}
