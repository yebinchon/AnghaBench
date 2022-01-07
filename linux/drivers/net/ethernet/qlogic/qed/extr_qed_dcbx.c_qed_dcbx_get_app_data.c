
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct qed_hwfn {int dummy; } ;
struct qed_dcbx_params {void* app_error; void* app_valid; void* app_willing; struct qed_app_entry* app_entry; void* num_app_entries; } ;
struct qed_app_entry {int ethtype; int proto_type; void* proto_id; scalar_t__ prio; void* sf_ieee; } ;
struct dcbx_app_priority_feature {int flags; } ;
struct dcbx_app_priority_entry {int entry; } ;


 int DCBX_APP_ENABLED ;
 int DCBX_APP_ERROR ;
 int DCBX_APP_NUM_ENTRIES ;
 int DCBX_APP_PRI_MAP ;
 int DCBX_APP_PROTOCOL_ID ;
 int DCBX_APP_SF ;
 int DCBX_APP_SF_IEEE ;





 int DCBX_APP_WILLING ;
 int DCBX_MAX_APP_PROTOCOL ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,void*,void*,void*) ;
 void* QED_DCBX_SF_IEEE_ETHTYPE ;
 void* QED_DCBX_SF_IEEE_TCP_PORT ;
 void* QED_DCBX_SF_IEEE_TCP_UDP_PORT ;
 void* QED_DCBX_SF_IEEE_UDP_PORT ;
 void* QED_MFW_GET_FIELD (int ,int ) ;
 int QED_MSG_DCB ;
 scalar_t__ ffs (int) ;
 int qed_dcbx_get_app_protocol_type (struct qed_hwfn*,int ,void*,int *,int) ;

__attribute__((used)) static void
qed_dcbx_get_app_data(struct qed_hwfn *p_hwfn,
        struct dcbx_app_priority_feature *p_app,
        struct dcbx_app_priority_entry *p_tbl,
        struct qed_dcbx_params *p_params, bool ieee)
{
 struct qed_app_entry *entry;
 u8 pri_map;
 int i;

 p_params->app_willing = QED_MFW_GET_FIELD(p_app->flags,
        DCBX_APP_WILLING);
 p_params->app_valid = QED_MFW_GET_FIELD(p_app->flags, DCBX_APP_ENABLED);
 p_params->app_error = QED_MFW_GET_FIELD(p_app->flags, DCBX_APP_ERROR);
 p_params->num_app_entries = QED_MFW_GET_FIELD(p_app->flags,
            DCBX_APP_NUM_ENTRIES);
 for (i = 0; i < DCBX_MAX_APP_PROTOCOL; i++) {
  entry = &p_params->app_entry[i];
  if (ieee) {
   u8 sf_ieee;
   u32 val;

   sf_ieee = QED_MFW_GET_FIELD(p_tbl[i].entry,
          DCBX_APP_SF_IEEE);
   switch (sf_ieee) {
   case 131:

    val = QED_MFW_GET_FIELD(p_tbl[i].entry,
       DCBX_APP_SF);
    entry->sf_ieee = val ?
        QED_DCBX_SF_IEEE_TCP_UDP_PORT :
        QED_DCBX_SF_IEEE_ETHTYPE;
    break;
   case 132:
    entry->sf_ieee = QED_DCBX_SF_IEEE_ETHTYPE;
    break;
   case 130:
    entry->sf_ieee = QED_DCBX_SF_IEEE_TCP_PORT;
    break;
   case 128:
    entry->sf_ieee = QED_DCBX_SF_IEEE_UDP_PORT;
    break;
   case 129:
    entry->sf_ieee = QED_DCBX_SF_IEEE_TCP_UDP_PORT;
    break;
   }
  } else {
   entry->ethtype = !(QED_MFW_GET_FIELD(p_tbl[i].entry,
            DCBX_APP_SF));
  }

  pri_map = QED_MFW_GET_FIELD(p_tbl[i].entry, DCBX_APP_PRI_MAP);
  entry->prio = ffs(pri_map) - 1;
  entry->proto_id = QED_MFW_GET_FIELD(p_tbl[i].entry,
          DCBX_APP_PROTOCOL_ID);
  qed_dcbx_get_app_protocol_type(p_hwfn, p_tbl[i].entry,
            entry->proto_id,
            &entry->proto_type, ieee);
 }

 DP_VERBOSE(p_hwfn, QED_MSG_DCB,
     "APP params: willing %d, valid %d error = %d\n",
     p_params->app_willing, p_params->app_valid,
     p_params->app_error);
}
