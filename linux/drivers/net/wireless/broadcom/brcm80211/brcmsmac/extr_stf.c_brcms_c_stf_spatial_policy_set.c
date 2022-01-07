
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct brcms_c_info {TYPE_3__* stf; TYPE_2__* pub; TYPE_1__* hw; } ;
typedef scalar_t__ s8 ;
struct TYPE_6__ {int txchain; scalar_t__ spatial_policy; } ;
struct TYPE_5__ {int unit; } ;
struct TYPE_4__ {int d11core; } ;


 int MAX_SPATIAL_EXPANSION ;
 int MAX_STREAMS_SUPPORTED ;
 int brcms_c_stf_txcore_set (struct brcms_c_info*,int ,int ) ;
 int brcms_dbg_ht (int ,char*,int ,int) ;
 int * txcore_default ;

__attribute__((used)) static int brcms_c_stf_spatial_policy_set(struct brcms_c_info *wlc, int val)
{
 int i;
 u8 core_mask = 0;

 brcms_dbg_ht(wlc->hw->d11core, "wl%d: val %x\n", wlc->pub->unit,
       val);

 wlc->stf->spatial_policy = (s8) val;
 for (i = 1; i <= MAX_STREAMS_SUPPORTED; i++) {
  core_mask = (val == MAX_SPATIAL_EXPANSION) ?
      wlc->stf->txchain : txcore_default[i];
  brcms_c_stf_txcore_set(wlc, (u8) i, core_mask);
 }
 return 0;
}
