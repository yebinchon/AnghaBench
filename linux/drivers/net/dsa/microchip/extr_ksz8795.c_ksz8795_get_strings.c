
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u32 ;
struct dsa_switch {int dummy; } ;
struct TYPE_2__ {int string; } ;


 int ETH_GSTRING_LEN ;
 int TOTAL_SWITCH_COUNTER_NUM ;
 int memcpy (int *,int ,int) ;
 TYPE_1__* mib_names ;

__attribute__((used)) static void ksz8795_get_strings(struct dsa_switch *ds, int port,
    u32 stringset, uint8_t *buf)
{
 int i;

 for (i = 0; i < TOTAL_SWITCH_COUNTER_NUM; i++) {
  memcpy(buf + i * ETH_GSTRING_LEN, mib_names[i].string,
         ETH_GSTRING_LEN);
 }
}
