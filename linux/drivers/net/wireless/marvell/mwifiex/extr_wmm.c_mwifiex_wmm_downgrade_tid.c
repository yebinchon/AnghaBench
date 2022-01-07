
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int* ac_down_graded_vals; } ;
struct mwifiex_private {TYPE_1__ wmm; int adapter; } ;
typedef enum mwifiex_wmm_ac_e { ____Placeholder_mwifiex_wmm_ac_e } mwifiex_wmm_ac_e ;


 int ** ac_to_tid ;
 int mwifiex_wmm_convert_tos_to_ac (int ,int) ;

u8 mwifiex_wmm_downgrade_tid(struct mwifiex_private *priv, u32 tid)
{
 enum mwifiex_wmm_ac_e ac, ac_down;
 u8 new_tid;

 ac = mwifiex_wmm_convert_tos_to_ac(priv->adapter, tid);
 ac_down = priv->wmm.ac_down_graded_vals[ac];




 new_tid = ac_to_tid[ac_down][tid % 2];

 return new_tid;
}
