
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_hbm_cl_cmd {int dummy; } ;
struct mei_device {scalar_t__ dev_state; int bus_rescan_work; } ;
struct mei_cl {int status; int me_cl; int state; } ;
struct hbm_client_connect_response {scalar_t__ status; } ;


 scalar_t__ MEI_CL_CONN_NOT_FOUND ;
 scalar_t__ MEI_CL_CONN_SUCCESS ;
 scalar_t__ MEI_DEV_ENABLED ;
 int MEI_FILE_CONNECTED ;
 int MEI_FILE_DISCONNECT_REPLY ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*,int ) ;
 int mei_cl_conn_status_str (scalar_t__) ;
 int mei_cl_conn_status_to_errno (scalar_t__) ;
 int mei_me_cl_del (struct mei_device*,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void mei_hbm_cl_connect_res(struct mei_device *dev, struct mei_cl *cl,
       struct mei_hbm_cl_cmd *cmd)
{
 struct hbm_client_connect_response *rs =
  (struct hbm_client_connect_response *)cmd;

 cl_dbg(dev, cl, "hbm: connect response status=%s\n",
   mei_cl_conn_status_str(rs->status));

 if (rs->status == MEI_CL_CONN_SUCCESS)
  cl->state = MEI_FILE_CONNECTED;
 else {
  cl->state = MEI_FILE_DISCONNECT_REPLY;
  if (rs->status == MEI_CL_CONN_NOT_FOUND) {
   mei_me_cl_del(dev, cl->me_cl);
   if (dev->dev_state == MEI_DEV_ENABLED)
    schedule_work(&dev->bus_rescan_work);
  }
 }
 cl->status = mei_cl_conn_status_to_errno(rs->status);
}
