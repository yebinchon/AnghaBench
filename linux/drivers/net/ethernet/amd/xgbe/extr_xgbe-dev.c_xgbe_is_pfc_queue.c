
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xgbe_prv_data {unsigned int* prio2q_map; TYPE_2__* pfc; TYPE_1__* ets; } ;
struct TYPE_4__ {int pfc_en; } ;
struct TYPE_3__ {unsigned int* prio_tc; } ;


 unsigned int IEEE_8021QAZ_MAX_TCS ;

__attribute__((used)) static bool xgbe_is_pfc_queue(struct xgbe_prv_data *pdata,
         unsigned int queue)
{
 unsigned int prio, tc;

 for (prio = 0; prio < IEEE_8021QAZ_MAX_TCS; prio++) {

  if (pdata->prio2q_map[prio] != queue)
   continue;


  tc = pdata->ets->prio_tc[prio];


  if (pdata->pfc->pfc_en & (1 << tc))
   return 1;
 }

 return 0;
}
