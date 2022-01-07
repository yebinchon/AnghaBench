
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint ;
struct brcms_c_rateset {scalar_t__ count; } ;
struct brcms_c_info {TYPE_4__** bandstate; TYPE_3__* default_bss; TYPE_2__* stf; TYPE_1__* band; } ;
struct TYPE_8__ {struct brcms_c_rateset defrateset; int hw_rateset; } ;
struct TYPE_7__ {struct brcms_c_rateset rateset; } ;
struct TYPE_6__ {int txstreams; } ;
struct TYPE_5__ {size_t bandunit; } ;


 scalar_t__ BRCMS_NUMRATES ;
 int EBADE ;
 int EINVAL ;
 size_t OTHERBANDUNIT (struct brcms_c_info*) ;
 scalar_t__ brcms_c_rate_hwrs_filter_sort_validate (struct brcms_c_rateset*,int *,int,int ) ;
 scalar_t__ brcms_is_mband_unlocked (struct brcms_c_info*) ;
 int memcpy (struct brcms_c_rateset*,struct brcms_c_rateset*,int) ;

__attribute__((used)) static int
brcms_c_set_internal_rateset(struct brcms_c_info *wlc,
        struct brcms_c_rateset *rs_arg)
{
 struct brcms_c_rateset rs, new;
 uint bandunit;

 memcpy(&rs, rs_arg, sizeof(struct brcms_c_rateset));


 if ((rs.count == 0) || (rs.count > BRCMS_NUMRATES))
  return -EINVAL;


 bandunit = wlc->band->bandunit;
 memcpy(&new, &rs, sizeof(struct brcms_c_rateset));
 if (brcms_c_rate_hwrs_filter_sort_validate
     (&new, &wlc->bandstate[bandunit]->hw_rateset, 1,
      wlc->stf->txstreams))
  goto good;


 if (brcms_is_mband_unlocked(wlc)) {
  bandunit = OTHERBANDUNIT(wlc);
  memcpy(&new, &rs, sizeof(struct brcms_c_rateset));
  if (brcms_c_rate_hwrs_filter_sort_validate(&new,
             &wlc->
             bandstate[bandunit]->
             hw_rateset, 1,
             wlc->stf->txstreams))
   goto good;
 }

 return -EBADE;

 good:

 memcpy(&wlc->default_bss->rateset, &new,
        sizeof(struct brcms_c_rateset));
 memcpy(&wlc->bandstate[bandunit]->defrateset, &new,
        sizeof(struct brcms_c_rateset));
 return 0;
}
