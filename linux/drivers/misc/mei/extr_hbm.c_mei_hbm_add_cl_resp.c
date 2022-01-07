
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct mei_msg_hdr {int dummy; } ;
struct mei_device {int dev; } ;
struct hbm_add_client_response {void* status; void* me_addr; int hbm_cmd; } ;


 int MEI_HBM_ADD_CLIENT_RES_CMD ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int mei_hbm_hdr (struct mei_msg_hdr*,size_t const) ;
 int mei_hbm_write_message (struct mei_device*,struct mei_msg_hdr*,struct hbm_add_client_response*) ;
 int memset (struct hbm_add_client_response*,int ,int) ;

__attribute__((used)) static int mei_hbm_add_cl_resp(struct mei_device *dev, u8 addr, u8 status)
{
 struct mei_msg_hdr mei_hdr;
 struct hbm_add_client_response resp;
 const size_t len = sizeof(struct hbm_add_client_response);
 int ret;

 dev_dbg(dev->dev, "adding client response\n");

 mei_hbm_hdr(&mei_hdr, len);

 memset(&resp, 0, sizeof(struct hbm_add_client_response));
 resp.hbm_cmd = MEI_HBM_ADD_CLIENT_RES_CMD;
 resp.me_addr = addr;
 resp.status = status;

 ret = mei_hbm_write_message(dev, &mei_hdr, &resp);
 if (ret)
  dev_err(dev->dev, "add client response write failed: ret = %d\n",
   ret);
 return ret;
}
