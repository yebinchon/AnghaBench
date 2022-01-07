
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_cmd_error_event {int err_code; int cmd_id; } ;
struct wmi {int dummy; } ;


 int ATH6KL_DBG_WMI ;



 int ath6kl_dbg (int ,char*,int ,char const*) ;

__attribute__((used)) static int ath6kl_wmi_error_event_rx(struct wmi *wmi, u8 *datap, int len)
{
 const char *type = "unknown error";
 struct wmi_cmd_error_event *ev;
 ev = (struct wmi_cmd_error_event *) datap;

 switch (ev->err_code) {
 case 128:
  type = "invalid parameter";
  break;
 case 130:
  type = "invalid state";
  break;
 case 129:
  type = "internal error";
  break;
 }

 ath6kl_dbg(ATH6KL_DBG_WMI, "programming error, cmd=%d %s\n",
     ev->cmd_id, type);

 return 0;
}
