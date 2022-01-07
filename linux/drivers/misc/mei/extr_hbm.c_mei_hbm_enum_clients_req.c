
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_msg_hdr {int dummy; } ;
struct mei_device {int init_clients_timer; int hbm_state; int dev; scalar_t__ hbm_f_ie_supported; scalar_t__ hbm_f_dc_supported; } ;
struct hbm_host_enum_request {int flags; int hbm_cmd; } ;


 int HOST_ENUM_REQ_CMD ;
 int MEI_CLIENTS_INIT_TIMEOUT ;
 int MEI_HBM_ENUM_CLIENTS ;
 int MEI_HBM_ENUM_F_ALLOW_ADD ;
 int MEI_HBM_ENUM_F_IMMEDIATE_ENUM ;
 int dev_err (int ,char*,int) ;
 int mei_hbm_hdr (struct mei_msg_hdr*,size_t const) ;
 int mei_hbm_write_message (struct mei_device*,struct mei_msg_hdr*,struct hbm_host_enum_request*) ;
 int mei_schedule_stall_timer (struct mei_device*) ;
 int memset (struct hbm_host_enum_request*,int ,size_t const) ;

__attribute__((used)) static int mei_hbm_enum_clients_req(struct mei_device *dev)
{
 struct mei_msg_hdr mei_hdr;
 struct hbm_host_enum_request enum_req;
 const size_t len = sizeof(struct hbm_host_enum_request);
 int ret;


 mei_hbm_hdr(&mei_hdr, len);

 memset(&enum_req, 0, len);
 enum_req.hbm_cmd = HOST_ENUM_REQ_CMD;
 enum_req.flags |= dev->hbm_f_dc_supported ?
     MEI_HBM_ENUM_F_ALLOW_ADD : 0;
 enum_req.flags |= dev->hbm_f_ie_supported ?
     MEI_HBM_ENUM_F_IMMEDIATE_ENUM : 0;

 ret = mei_hbm_write_message(dev, &mei_hdr, &enum_req);
 if (ret) {
  dev_err(dev->dev, "enumeration request write failed: ret = %d.\n",
   ret);
  return ret;
 }
 dev->hbm_state = MEI_HBM_ENUM_CLIENTS;
 dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
 mei_schedule_stall_timer(dev);
 return 0;
}
