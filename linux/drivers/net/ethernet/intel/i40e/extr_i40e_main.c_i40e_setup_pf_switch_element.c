
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_pf {int mac_seid; int lan_veb; int pf_seid; int main_vsi_seid; TYPE_2__* pdev; TYPE_1__** veb; } ;
struct i40e_aqc_switch_config_element_resp {int element_type; int seid; int uplink_seid; int downlink_seid; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int seid; int uplink_seid; int veb_idx; struct i40e_pf* pf; } ;


 int I40E_MAX_VEB ;
 int I40E_NO_VEB ;
 int dev_info (int *,char*,int,int,...) ;
 int i40e_veb_mem_alloc (struct i40e_pf*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void i40e_setup_pf_switch_element(struct i40e_pf *pf,
    struct i40e_aqc_switch_config_element_resp *ele,
    u16 num_reported, bool printconfig)
{
 u16 downlink_seid = le16_to_cpu(ele->downlink_seid);
 u16 uplink_seid = le16_to_cpu(ele->uplink_seid);
 u8 element_type = ele->element_type;
 u16 seid = le16_to_cpu(ele->seid);

 if (printconfig)
  dev_info(&pf->pdev->dev,
    "type=%d seid=%d uplink=%d downlink=%d\n",
    element_type, seid, uplink_seid, downlink_seid);

 switch (element_type) {
 case 134:
  pf->mac_seid = seid;
  break;
 case 130:

  if (uplink_seid != pf->mac_seid)
   break;
  if (pf->lan_veb >= I40E_MAX_VEB) {
   int v;


   for (v = 0; v < I40E_MAX_VEB; v++) {
    if (pf->veb[v] && (pf->veb[v]->seid == seid)) {
     pf->lan_veb = v;
     break;
    }
   }
   if (pf->lan_veb >= I40E_MAX_VEB) {
    v = i40e_veb_mem_alloc(pf);
    if (v < 0)
     break;
    pf->lan_veb = v;
   }
  }
  if (pf->lan_veb >= I40E_MAX_VEB)
   break;

  pf->veb[pf->lan_veb]->seid = seid;
  pf->veb[pf->lan_veb]->uplink_seid = pf->mac_seid;
  pf->veb[pf->lan_veb]->pf = pf;
  pf->veb[pf->lan_veb]->veb_idx = I40E_NO_VEB;
  break;
 case 128:
  if (num_reported != 1)
   break;



  pf->mac_seid = uplink_seid;
  pf->pf_seid = downlink_seid;
  pf->main_vsi_seid = seid;
  if (printconfig)
   dev_info(&pf->pdev->dev,
     "pf_seid=%d main_vsi_seid=%d\n",
     pf->pf_seid, pf->main_vsi_seid);
  break;
 case 131:
 case 129:
 case 135:
 case 136:
 case 132:
 case 133:

  break;
 default:
  dev_info(&pf->pdev->dev, "unknown element type=%d seid=%d\n",
    element_type, seid);
  break;
 }
}
