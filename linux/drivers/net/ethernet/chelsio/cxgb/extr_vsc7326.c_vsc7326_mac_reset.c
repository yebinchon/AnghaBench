
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int ARRAY_SIZE (int ) ;
 int run_bist_all (int *) ;
 int run_table (int *,int ,int ) ;
 int vsc7326_full_reset (int *) ;
 int vsc7326_reset ;

__attribute__((used)) static int vsc7326_mac_reset(adapter_t *adapter)
{
 vsc7326_full_reset(adapter);
 (void) run_bist_all(adapter);
 run_table(adapter, vsc7326_reset, ARRAY_SIZE(vsc7326_reset));
 return 0;
}
