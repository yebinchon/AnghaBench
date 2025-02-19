
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct i40e_dcbx_config {int numapps; TYPE_2__* app; } ;
struct TYPE_3__ {int typelen; } ;
struct i40e_cee_feat_tlv {int tlvinfo; TYPE_1__ hdr; } ;
struct i40e_cee_app_prio {int prio_map; scalar_t__ upper_oui_sel; int protocol; } ;
struct TYPE_4__ {void* protocolid; scalar_t__ selector; scalar_t__ priority; } ;


 int BIT (scalar_t__) ;
 scalar_t__ I40E_APP_SEL_ETHTYPE ;
 scalar_t__ I40E_APP_SEL_TCPIP ;
 scalar_t__ I40E_CEE_APP_SELECTOR_MASK ;


 int I40E_DCBX_MAX_APPS ;
 int I40E_LLDP_TLV_LEN_MASK ;
 int I40E_LLDP_TLV_LEN_SHIFT ;
 scalar_t__ I40E_MAX_USER_PRIORITY ;
 void* ntohs (int ) ;

__attribute__((used)) static void i40e_parse_cee_app_tlv(struct i40e_cee_feat_tlv *tlv,
       struct i40e_dcbx_config *dcbcfg)
{
 u16 length, typelength, offset = 0;
 struct i40e_cee_app_prio *app;
 u8 i;

 typelength = ntohs(tlv->hdr.typelen);
 length = (u16)((typelength & I40E_LLDP_TLV_LEN_MASK) >>
         I40E_LLDP_TLV_LEN_SHIFT);

 dcbcfg->numapps = length / sizeof(*app);

 if (!dcbcfg->numapps)
  return;
 if (dcbcfg->numapps > I40E_DCBX_MAX_APPS)
  dcbcfg->numapps = I40E_DCBX_MAX_APPS;

 for (i = 0; i < dcbcfg->numapps; i++) {
  u8 up, selector;

  app = (struct i40e_cee_app_prio *)(tlv->tlvinfo + offset);
  for (up = 0; up < I40E_MAX_USER_PRIORITY; up++) {
   if (app->prio_map & BIT(up))
    break;
  }
  dcbcfg->app[i].priority = up;


  selector = (app->upper_oui_sel & I40E_CEE_APP_SELECTOR_MASK);
  switch (selector) {
  case 129:
   dcbcfg->app[i].selector = I40E_APP_SEL_ETHTYPE;
   break;
  case 128:
   dcbcfg->app[i].selector = I40E_APP_SEL_TCPIP;
   break;
  default:

   dcbcfg->app[i].selector = selector;
  }

  dcbcfg->app[i].protocolid = ntohs(app->protocol);

  offset += sizeof(*app);
 }
}
