
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_msg_hdr {int dummy; } ;
struct mei_device {int init_clients_timer; int hbm_state; int dev; } ;
struct TYPE_2__ {int minor_version; int major_version; } ;
struct hbm_host_version_request {TYPE_1__ host_version; int hbm_cmd; } ;


 int HBM_MAJOR_VERSION ;
 int HBM_MINOR_VERSION ;
 int HOST_START_REQ_CMD ;
 int MEI_CLIENTS_INIT_TIMEOUT ;
 int MEI_HBM_IDLE ;
 int MEI_HBM_STARTING ;
 int dev_err (int ,char*,int) ;
 int mei_hbm_hdr (struct mei_msg_hdr*,size_t const) ;
 int mei_hbm_reset (struct mei_device*) ;
 int mei_hbm_write_message (struct mei_device*,struct mei_msg_hdr*,struct hbm_host_version_request*) ;
 int mei_schedule_stall_timer (struct mei_device*) ;
 int memset (struct hbm_host_version_request*,int ,size_t const) ;

int mei_hbm_start_req(struct mei_device *dev)
{
 struct mei_msg_hdr mei_hdr;
 struct hbm_host_version_request start_req;
 const size_t len = sizeof(struct hbm_host_version_request);
 int ret;

 mei_hbm_reset(dev);

 mei_hbm_hdr(&mei_hdr, len);


 memset(&start_req, 0, len);
 start_req.hbm_cmd = HOST_START_REQ_CMD;
 start_req.host_version.major_version = HBM_MAJOR_VERSION;
 start_req.host_version.minor_version = HBM_MINOR_VERSION;

 dev->hbm_state = MEI_HBM_IDLE;
 ret = mei_hbm_write_message(dev, &mei_hdr, &start_req);
 if (ret) {
  dev_err(dev->dev, "version message write failed: ret = %d\n",
   ret);
  return ret;
 }

 dev->hbm_state = MEI_HBM_STARTING;
 dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
 mei_schedule_stall_timer(dev);
 return 0;
}
