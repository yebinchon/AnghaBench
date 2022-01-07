
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qed_ooo_buffer {int rx_buffer_phys_addr; int rx_buffer_virt_addr; int rx_buffer_size; } ;
struct TYPE_4__ {scalar_t__ conn_type; } ;
struct qed_ll2_info {TYPE_1__ input; } ;
struct qed_hwfn {TYPE_3__* cdev; int p_ooo_info; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ QED_LL2_TYPE_OOO ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (struct qed_ooo_buffer*) ;
 struct qed_ooo_buffer* qed_ooo_get_free_buffer (struct qed_hwfn*,int ) ;
 int qed_ooo_release_all_isles (struct qed_hwfn*,int ) ;

__attribute__((used)) static void qed_ll2_release_connection_ooo(struct qed_hwfn *p_hwfn,
        struct qed_ll2_info *p_ll2_conn)
{
 struct qed_ooo_buffer *p_buffer;

 if (p_ll2_conn->input.conn_type != QED_LL2_TYPE_OOO)
  return;

 qed_ooo_release_all_isles(p_hwfn, p_hwfn->p_ooo_info);
 while ((p_buffer = qed_ooo_get_free_buffer(p_hwfn,
         p_hwfn->p_ooo_info))) {
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      p_buffer->rx_buffer_size,
      p_buffer->rx_buffer_virt_addr,
      p_buffer->rx_buffer_phys_addr);
  kfree(p_buffer);
 }
}
