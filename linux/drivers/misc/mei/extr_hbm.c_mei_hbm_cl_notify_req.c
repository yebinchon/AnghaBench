
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mei_msg_hdr {int dummy; } ;
struct mei_device {int dev; } ;
struct mei_cl {int dummy; } ;
struct hbm_notification_request {int start; } ;


 int MEI_HBM_NOTIFY_REQ_CMD ;
 int dev_err (int ,char*,int) ;
 int mei_hbm_cl_hdr (struct mei_cl*,int ,struct hbm_notification_request*,size_t const) ;
 int mei_hbm_hdr (struct mei_msg_hdr*,size_t const) ;
 int mei_hbm_write_message (struct mei_device*,struct mei_msg_hdr*,struct hbm_notification_request*) ;

int mei_hbm_cl_notify_req(struct mei_device *dev,
     struct mei_cl *cl, u8 start)
{

 struct mei_msg_hdr mei_hdr;
 struct hbm_notification_request req;
 const size_t len = sizeof(struct hbm_notification_request);
 int ret;

 mei_hbm_hdr(&mei_hdr, len);
 mei_hbm_cl_hdr(cl, MEI_HBM_NOTIFY_REQ_CMD, &req, len);

 req.start = start;

 ret = mei_hbm_write_message(dev, &mei_hdr, &req);
 if (ret)
  dev_err(dev->dev, "notify request failed: ret = %d\n", ret);

 return ret;
}
