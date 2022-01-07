
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_hbm_cl_cmd {int dummy; } ;
struct mei_device {int dummy; } ;
struct mei_cl {scalar_t__ status; int state; } ;
struct hbm_client_connect_response {scalar_t__ status; } ;


 scalar_t__ MEI_CL_DISCONN_SUCCESS ;
 int MEI_FILE_DISCONNECT_REPLY ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*,scalar_t__) ;

__attribute__((used)) static void mei_hbm_cl_disconnect_res(struct mei_device *dev, struct mei_cl *cl,
          struct mei_hbm_cl_cmd *cmd)
{
 struct hbm_client_connect_response *rs =
  (struct hbm_client_connect_response *)cmd;

 cl_dbg(dev, cl, "hbm: disconnect response status=%d\n", rs->status);

 if (rs->status == MEI_CL_DISCONN_SUCCESS)
  cl->state = MEI_FILE_DISCONNECT_REPLY;
 cl->status = 0;
}
