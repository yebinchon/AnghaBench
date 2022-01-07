
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int is_11h_active; } ;
struct mwifiex_private {TYPE_1__ state_11h; } ;
struct mwifiex_bssdescriptor {int cap_info_bitmap; scalar_t__ sensed_11h; } ;


 int WLAN_CAPABILITY_SPECTRUM_MGMT ;
 int mwifiex_11h_activate (struct mwifiex_private*,int) ;
 int mwifiex_11h_process_infra_join (struct mwifiex_private*,int **,struct mwifiex_bssdescriptor*) ;

void mwifiex_11h_process_join(struct mwifiex_private *priv, u8 **buffer,
         struct mwifiex_bssdescriptor *bss_desc)
{
 if (bss_desc->sensed_11h) {



  mwifiex_11h_activate(priv, 1);
  priv->state_11h.is_11h_active = 1;
  bss_desc->cap_info_bitmap |= WLAN_CAPABILITY_SPECTRUM_MGMT;
  mwifiex_11h_process_infra_join(priv, buffer, bss_desc);
 } else {

  mwifiex_11h_activate(priv, 0);
  priv->state_11h.is_11h_active = 0;
  bss_desc->cap_info_bitmap &= ~WLAN_CAPABILITY_SPECTRUM_MGMT;
 }
}
