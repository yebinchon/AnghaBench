
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct qed_dev {int dummy; } ;
typedef enum qed_chain_cnt_type { ____Placeholder_qed_chain_cnt_type } qed_chain_cnt_type ;


 int DP_NOTICE (struct qed_dev*,char*,scalar_t__) ;
 int EINVAL ;
 scalar_t__ ELEMS_PER_PAGE (size_t) ;
 int QED_CHAIN_CNT_TYPE_U16 ;
 int QED_CHAIN_CNT_TYPE_U32 ;
 scalar_t__ U16_MAX ;
 scalar_t__ U32_MAX ;

__attribute__((used)) static int
qed_chain_alloc_sanity_check(struct qed_dev *cdev,
        enum qed_chain_cnt_type cnt_type,
        size_t elem_size, u32 page_cnt)
{
 u64 chain_size = ELEMS_PER_PAGE(elem_size) * page_cnt;







 if ((cnt_type == QED_CHAIN_CNT_TYPE_U16 &&
      chain_size > ((u32)U16_MAX + 1)) ||
     (cnt_type == QED_CHAIN_CNT_TYPE_U32 && chain_size > U32_MAX)) {
  DP_NOTICE(cdev,
     "The actual chain size (0x%llx) is larger than the maximal possible value\n",
     chain_size);
  return -EINVAL;
 }

 return 0;
}
