
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* hw; } ;
struct TYPE_2__ {scalar_t__* di; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ dma_txpending (scalar_t__) ;

__attribute__((used)) static int brcms_txpktpendtot(struct brcms_c_info *wlc)
{
 int i;
 int pending = 0;

 for (i = 0; i < ARRAY_SIZE(wlc->hw->di); i++)
  if (wlc->hw->di[i])
   pending += dma_txpending(wlc->hw->di[i]);
 return pending;
}
