
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mei_device {scalar_t__ dev_state; int bus_rescan_work; } ;
struct hbm_props_response {int dummy; } ;
struct hbm_add_client_request {int me_addr; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ MEI_DEV_ENABLED ;
 int MEI_HBMS_SUCCESS ;
 int mei_hbm_add_cl_resp (struct mei_device*,int ,int) ;
 int mei_hbm_me_cl_add (struct mei_device*,struct hbm_props_response*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int mei_hbm_fw_add_cl_req(struct mei_device *dev,
         struct hbm_add_client_request *req)
{
 int ret;
 u8 status = MEI_HBMS_SUCCESS;

 BUILD_BUG_ON(sizeof(struct hbm_add_client_request) !=
   sizeof(struct hbm_props_response));

 ret = mei_hbm_me_cl_add(dev, (struct hbm_props_response *)req);
 if (ret)
  status = !MEI_HBMS_SUCCESS;

 if (dev->dev_state == MEI_DEV_ENABLED)
  schedule_work(&dev->bus_rescan_work);

 return mei_hbm_add_cl_resp(dev, req->me_addr, status);
}
