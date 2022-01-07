
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
struct mei_cl_cb {int dummy; } ;
struct mei_cl {scalar_t__ timer_count; int state; } ;
struct hbm_client_connect_request {int dummy; } ;


 int ENOMEM ;
 int MEI_FILE_DISCONNECTING ;
 int MEI_FOP_DISCONNECT_RSP ;
 int cl_warn (struct mei_device*,struct mei_cl*,char*) ;
 struct mei_cl_cb* mei_cl_enqueue_ctrl_wr_cb (struct mei_cl*,int ,int ,int *) ;
 struct mei_cl* mei_hbm_cl_find_by_cmd (struct mei_device*,struct hbm_client_connect_request*) ;

__attribute__((used)) static int mei_hbm_fw_disconnect_req(struct mei_device *dev,
  struct hbm_client_connect_request *disconnect_req)
{
 struct mei_cl *cl;
 struct mei_cl_cb *cb;

 cl = mei_hbm_cl_find_by_cmd(dev, disconnect_req);
 if (cl) {
  cl_warn(dev, cl, "fw disconnect request received\n");
  cl->state = MEI_FILE_DISCONNECTING;
  cl->timer_count = 0;

  cb = mei_cl_enqueue_ctrl_wr_cb(cl, 0, MEI_FOP_DISCONNECT_RSP,
            ((void*)0));
  if (!cb)
   return -ENOMEM;
 }
 return 0;
}
