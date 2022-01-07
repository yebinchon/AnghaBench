
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ampdu_info {TYPE_1__* wlc; } ;
struct TYPE_2__ {int band; } ;


 scalar_t__ BRCMS_PHY_11N_CAP (int ) ;

__attribute__((used)) static bool brcms_c_ampdu_cap(struct ampdu_info *ampdu)
{
 if (BRCMS_PHY_11N_CAP(ampdu->wlc->band))
  return 1;
 else
  return 0;
}
