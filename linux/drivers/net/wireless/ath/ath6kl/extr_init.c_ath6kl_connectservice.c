
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_service_connect_resp {int endpoint; } ;
struct htc_service_connect_req {int svc_id; } ;
struct ath6kl {int ctrl_ep; int wmi; int flag; int htc_target; } ;
typedef int response ;


 int EINVAL ;





 int WMI_ENABLED ;
 int WMM_AC_BE ;
 int WMM_AC_BK ;
 int WMM_AC_VI ;
 int WMM_AC_VO ;
 int ath6kl_err (char*,...) ;
 int ath6kl_htc_conn_service (int ,struct htc_service_connect_req*,struct htc_service_connect_resp*) ;
 int ath6kl_wmi_set_control_ep (int ,int ) ;
 int memset (struct htc_service_connect_resp*,int ,int) ;
 int set_ac2_ep_map (struct ath6kl*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ath6kl_connectservice(struct ath6kl *ar,
     struct htc_service_connect_req *con_req,
     char *desc)
{
 int status;
 struct htc_service_connect_resp response;

 memset(&response, 0, sizeof(response));

 status = ath6kl_htc_conn_service(ar->htc_target, con_req, &response);
 if (status) {
  ath6kl_err("failed to connect to %s service status:%d\n",
      desc, status);
  return status;
 }

 switch (con_req->svc_id) {
 case 132:
  if (test_bit(WMI_ENABLED, &ar->flag))
   ath6kl_wmi_set_control_ep(ar->wmi, response.endpoint);
  ar->ctrl_ep = response.endpoint;
  break;
 case 131:
  set_ac2_ep_map(ar, WMM_AC_BE, response.endpoint);
  break;
 case 130:
  set_ac2_ep_map(ar, WMM_AC_BK, response.endpoint);
  break;
 case 129:
  set_ac2_ep_map(ar, WMM_AC_VI, response.endpoint);
  break;
 case 128:
  set_ac2_ep_map(ar, WMM_AC_VO, response.endpoint);
  break;
 default:
  ath6kl_err("service id is not mapped %d\n", con_req->svc_id);
  return -EINVAL;
 }

 return 0;
}
