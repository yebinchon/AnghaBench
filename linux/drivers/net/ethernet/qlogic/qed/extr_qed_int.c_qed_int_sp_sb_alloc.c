
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_sb_sp_info {int pi_info_arr; int sb_info; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {struct qed_sb_sp_info* p_sp_sb; TYPE_1__* cdev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {TYPE_2__* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_SP_SB_ID ;
 int SB_ALIGNED_SIZE (struct qed_hwfn*) ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int kfree (struct qed_sb_sp_info*) ;
 struct qed_sb_sp_info* kmalloc (int,int ) ;
 int memset (int ,int ,int) ;
 int qed_int_sb_init (struct qed_hwfn*,struct qed_ptt*,int *,void*,int ,int ) ;

__attribute__((used)) static int qed_int_sp_sb_alloc(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 struct qed_sb_sp_info *p_sb;
 dma_addr_t p_phys = 0;
 void *p_virt;


 p_sb = kmalloc(sizeof(*p_sb), GFP_KERNEL);
 if (!p_sb)
  return -ENOMEM;


 p_virt = dma_alloc_coherent(&p_hwfn->cdev->pdev->dev,
        SB_ALIGNED_SIZE(p_hwfn),
        &p_phys, GFP_KERNEL);
 if (!p_virt) {
  kfree(p_sb);
  return -ENOMEM;
 }


 p_hwfn->p_sp_sb = p_sb;
 qed_int_sb_init(p_hwfn, p_ptt, &p_sb->sb_info, p_virt,
   p_phys, QED_SP_SB_ID);

 memset(p_sb->pi_info_arr, 0, sizeof(p_sb->pi_info_arr));

 return 0;
}
