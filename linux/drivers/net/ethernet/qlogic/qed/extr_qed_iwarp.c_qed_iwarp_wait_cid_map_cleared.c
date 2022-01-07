
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;
struct qed_bmap {int name; int max_count; int bitmap; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int ,int) ;
 int EBUSY ;
 int QED_IWARP_MAX_CID_CLEAN_TIME ;
 int QED_IWARP_MAX_NO_PROGRESS_CNT ;
 int bitmap_weight (int ,int ) ;
 int msleep (int ) ;

__attribute__((used)) static int
qed_iwarp_wait_cid_map_cleared(struct qed_hwfn *p_hwfn, struct qed_bmap *bmap)
{
 int prev_weight = 0;
 int wait_count = 0;
 int weight = 0;

 weight = bitmap_weight(bmap->bitmap, bmap->max_count);
 prev_weight = weight;

 while (weight) {
  msleep(QED_IWARP_MAX_CID_CLEAN_TIME);

  weight = bitmap_weight(bmap->bitmap, bmap->max_count);

  if (prev_weight == weight) {
   wait_count++;
  } else {
   prev_weight = weight;
   wait_count = 0;
  }

  if (wait_count > QED_IWARP_MAX_NO_PROGRESS_CNT) {
   DP_NOTICE(p_hwfn,
      "%s bitmap wait timed out (%d cids pending)\n",
      bmap->name, weight);
   return -EBUSY;
  }
 }
 return 0;
}
