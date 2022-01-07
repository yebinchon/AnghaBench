
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_sb_attn_info {int dummy; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {struct qed_sb_attn_info* p_sb_attn; struct qed_dev* cdev; } ;
struct qed_dev {TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SB_ATTN_ALIGNED_SIZE (struct qed_hwfn*) ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int kfree (struct qed_sb_attn_info*) ;
 struct qed_sb_attn_info* kmalloc (int,int ) ;
 int qed_int_sb_attn_init (struct qed_hwfn*,struct qed_ptt*,void*,int ) ;

__attribute__((used)) static int qed_int_sb_attn_alloc(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt)
{
 struct qed_dev *cdev = p_hwfn->cdev;
 struct qed_sb_attn_info *p_sb;
 dma_addr_t p_phys = 0;
 void *p_virt;


 p_sb = kmalloc(sizeof(*p_sb), GFP_KERNEL);
 if (!p_sb)
  return -ENOMEM;


 p_virt = dma_alloc_coherent(&cdev->pdev->dev,
        SB_ATTN_ALIGNED_SIZE(p_hwfn),
        &p_phys, GFP_KERNEL);

 if (!p_virt) {
  kfree(p_sb);
  return -ENOMEM;
 }


 p_hwfn->p_sb_attn = p_sb;
 qed_int_sb_attn_init(p_hwfn, p_ptt, p_virt, p_phys);

 return 0;
}
