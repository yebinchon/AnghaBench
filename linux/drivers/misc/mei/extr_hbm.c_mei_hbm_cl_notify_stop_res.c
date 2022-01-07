
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_hbm_cl_cmd {int dummy; } ;
struct mei_device {int dummy; } ;
struct mei_cl {int notify_en; int status; } ;
struct hbm_notification_response {scalar_t__ status; } ;


 int EINVAL ;
 scalar_t__ MEI_HBMS_NOT_STARTED ;
 scalar_t__ MEI_HBMS_SUCCESS ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*,scalar_t__) ;

__attribute__((used)) static void mei_hbm_cl_notify_stop_res(struct mei_device *dev,
           struct mei_cl *cl,
           struct mei_hbm_cl_cmd *cmd)
{
 struct hbm_notification_response *rs =
  (struct hbm_notification_response *)cmd;

 cl_dbg(dev, cl, "hbm: notify stop response status=%d\n", rs->status);

 if (rs->status == MEI_HBMS_SUCCESS ||
     rs->status == MEI_HBMS_NOT_STARTED) {
  cl->notify_en = 0;
  cl->status = 0;
 } else {

  cl->status = -EINVAL;
 }
}
