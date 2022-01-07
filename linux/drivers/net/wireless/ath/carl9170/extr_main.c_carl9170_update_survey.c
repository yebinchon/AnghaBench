
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hw_counters; } ;
struct ar9170 {int tally; TYPE_1__ fw; } ;


 int carl9170_collect_tally (struct ar9170*) ;
 int carl9170_get_noisefloor (struct ar9170*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int carl9170_update_survey(struct ar9170 *ar, bool flush, bool noise)
{
 int err;

 if (noise) {
  err = carl9170_get_noisefloor(ar);
  if (err)
   return err;
 }

 if (ar->fw.hw_counters) {
  err = carl9170_collect_tally(ar);
  if (err)
   return err;
 }

 if (flush)
  memset(&ar->tally, 0, sizeof(ar->tally));

 return 0;
}
