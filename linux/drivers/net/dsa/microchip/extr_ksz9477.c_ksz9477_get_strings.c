
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ u32 ;
struct dsa_switch {int dummy; } ;
struct TYPE_2__ {int string; } ;


 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 int TOTAL_SWITCH_COUNTER_NUM ;
 TYPE_1__* ksz9477_mib_names ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void ksz9477_get_strings(struct dsa_switch *ds, int port,
    u32 stringset, uint8_t *buf)
{
 int i;

 if (stringset != ETH_SS_STATS)
  return;

 for (i = 0; i < TOTAL_SWITCH_COUNTER_NUM; i++) {
  memcpy(buf + i * ETH_GSTRING_LEN, ksz9477_mib_names[i].string,
         ETH_GSTRING_LEN);
 }
}
