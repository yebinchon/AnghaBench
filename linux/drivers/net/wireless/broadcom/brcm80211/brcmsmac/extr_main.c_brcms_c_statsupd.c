
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct macstat {scalar_t__* txfunfl; scalar_t__ rxf0ovfl; } ;
struct brcms_c_info {TYPE_3__* hw; TYPE_2__* pub; TYPE_1__* core; } ;
struct TYPE_6__ {scalar_t__* di; int d11core; } ;
struct TYPE_5__ {int unit; int up; } ;
struct TYPE_4__ {struct macstat* macstat_snapshot; } ;


 int M_UCODE_MACSTAT ;
 int NFIFO ;
 int OBJADDR_SHM_SEL ;
 int brcms_b_copyfrom_objmem (TYPE_3__*,int ,struct macstat*,int,int ) ;
 int brcms_err (int ,char*,int ,scalar_t__,...) ;
 int dma_counterreset (scalar_t__) ;

__attribute__((used)) static void brcms_c_statsupd(struct brcms_c_info *wlc)
{
 int i;
 struct macstat *macstats;







 if (!wlc->pub->up)
  return;

 macstats = wlc->core->macstat_snapshot;
 brcms_b_copyfrom_objmem(wlc->hw, M_UCODE_MACSTAT, macstats,
    sizeof(*macstats), OBJADDR_SHM_SEL);
 for (i = 0; i < NFIFO; i++) {
  if (wlc->hw->di[i])
   dma_counterreset(wlc->hw->di[i]);
 }
}
