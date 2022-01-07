
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ u32 ;
struct dsa_switch {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 TYPE_1__* gswip_rmon_cnt ;
 int strncpy (int *,int ,int) ;

__attribute__((used)) static void gswip_get_strings(struct dsa_switch *ds, int port, u32 stringset,
         uint8_t *data)
{
 int i;

 if (stringset != ETH_SS_STATS)
  return;

 for (i = 0; i < ARRAY_SIZE(gswip_rmon_cnt); i++)
  strncpy(data + i * ETH_GSTRING_LEN, gswip_rmon_cnt[i].name,
   ETH_GSTRING_LEN);
}
