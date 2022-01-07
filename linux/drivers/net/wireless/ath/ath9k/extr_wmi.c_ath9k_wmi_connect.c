
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi {int ctrl_epid; struct htc_target* htc; } ;
struct htc_target {int dummy; } ;
struct TYPE_2__ {int rx; int tx; struct wmi* priv; } ;
struct htc_service_connreq {int service_id; TYPE_1__ ep_callbacks; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;
typedef int connect ;


 int WMI_CONTROL_SVC ;
 int ath9k_wmi_ctrl_rx ;
 int ath9k_wmi_ctrl_tx ;
 int htc_connect_service (struct htc_target*,struct htc_service_connreq*,int*) ;
 int memset (struct htc_service_connreq*,int ,int) ;

int ath9k_wmi_connect(struct htc_target *htc, struct wmi *wmi,
        enum htc_endpoint_id *wmi_ctrl_epid)
{
 struct htc_service_connreq connect;
 int ret;

 wmi->htc = htc;

 memset(&connect, 0, sizeof(connect));

 connect.ep_callbacks.priv = wmi;
 connect.ep_callbacks.tx = ath9k_wmi_ctrl_tx;
 connect.ep_callbacks.rx = ath9k_wmi_ctrl_rx;
 connect.service_id = WMI_CONTROL_SVC;

 ret = htc_connect_service(htc, &connect, &wmi->ctrl_epid);
 if (ret)
  return ret;

 *wmi_ctrl_epid = wmi->ctrl_epid;

 return 0;
}
