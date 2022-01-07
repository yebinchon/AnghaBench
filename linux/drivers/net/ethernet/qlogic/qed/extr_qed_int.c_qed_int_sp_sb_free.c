
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sb_phys; scalar_t__ sb_virt; } ;
struct qed_sb_sp_info {TYPE_3__ sb_info; } ;
struct qed_hwfn {struct qed_sb_sp_info* p_sp_sb; TYPE_2__* cdev; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int SB_ALIGNED_SIZE (struct qed_hwfn*) ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int kfree (struct qed_sb_sp_info*) ;

__attribute__((used)) static void qed_int_sp_sb_free(struct qed_hwfn *p_hwfn)
{
 struct qed_sb_sp_info *p_sb = p_hwfn->p_sp_sb;

 if (!p_sb)
  return;

 if (p_sb->sb_info.sb_virt)
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      SB_ALIGNED_SIZE(p_hwfn),
      p_sb->sb_info.sb_virt,
      p_sb->sb_info.sb_phys);
 kfree(p_sb);
 p_hwfn->p_sp_sb = ((void*)0);
}
