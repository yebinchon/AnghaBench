
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_pf_iov {int bulletins_phys; scalar_t__ p_bulletins; int bulletins_size; int mbx_reply_phys_addr; scalar_t__ mbx_reply_virt_addr; int mbx_reply_size; int mbx_msg_phys_addr; scalar_t__ mbx_msg_virt_addr; int mbx_msg_size; } ;
struct qed_hwfn {TYPE_2__* cdev; struct qed_pf_iov* pf_iov_info; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static void qed_iov_free_vfdb(struct qed_hwfn *p_hwfn)
{
 struct qed_pf_iov *p_iov_info = p_hwfn->pf_iov_info;

 if (p_hwfn->pf_iov_info->mbx_msg_virt_addr)
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      p_iov_info->mbx_msg_size,
      p_iov_info->mbx_msg_virt_addr,
      p_iov_info->mbx_msg_phys_addr);

 if (p_hwfn->pf_iov_info->mbx_reply_virt_addr)
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      p_iov_info->mbx_reply_size,
      p_iov_info->mbx_reply_virt_addr,
      p_iov_info->mbx_reply_phys_addr);

 if (p_iov_info->p_bulletins)
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      p_iov_info->bulletins_size,
      p_iov_info->p_bulletins,
      p_iov_info->bulletins_phys);
}
