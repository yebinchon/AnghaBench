
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_hwfn {int dummy; } ;
struct qed_bmap {scalar_t__ max_count; int bitmap; } ;


 int test_bit (scalar_t__,int ) ;

int qed_bmap_test_id(struct qed_hwfn *p_hwfn,
       struct qed_bmap *bmap, u32 id_num)
{
 if (id_num >= bmap->max_count)
  return -1;

 return test_bit(id_num, bmap->bitmap);
}
