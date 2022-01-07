
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct mwifiex_adapter {size_t priv_num; TYPE_1__** priv; } ;
struct TYPE_2__ {size_t bss_type; } ;



__attribute__((used)) static inline u8
mwifiex_get_intf_num(struct mwifiex_adapter *adapter, u8 bss_type)
{
 u8 i, num = 0;

 for (i = 0; i < adapter->priv_num; i++)
  if (adapter->priv[i] && adapter->priv[i]->bss_type == bss_type)
   num++;
 return num;
}
