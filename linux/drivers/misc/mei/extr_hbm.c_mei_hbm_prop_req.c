
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_msg_hdr {int dummy; } ;
struct mei_device {int init_clients_timer; int dev; int hbm_state; int me_clients_map; } ;
struct hbm_props_request {unsigned long me_addr; int hbm_cmd; } ;


 int HOST_CLIENT_PROPERTIES_REQ_CMD ;
 int MEI_CLIENTS_INIT_TIMEOUT ;
 unsigned long MEI_CLIENTS_MAX ;
 int MEI_HBM_STARTED ;
 int dev_err (int ,char*,int) ;
 unsigned long find_next_bit (int ,unsigned long,unsigned long) ;
 int mei_hbm_hdr (struct mei_msg_hdr*,size_t const) ;
 int mei_hbm_write_message (struct mei_device*,struct mei_msg_hdr*,struct hbm_props_request*) ;
 int mei_host_client_init (struct mei_device*) ;
 int mei_schedule_stall_timer (struct mei_device*) ;
 int memset (struct hbm_props_request*,int ,int) ;

__attribute__((used)) static int mei_hbm_prop_req(struct mei_device *dev, unsigned long start_idx)
{
 struct mei_msg_hdr mei_hdr;
 struct hbm_props_request prop_req;
 const size_t len = sizeof(struct hbm_props_request);
 unsigned long addr;
 int ret;

 addr = find_next_bit(dev->me_clients_map, MEI_CLIENTS_MAX, start_idx);


 if (addr == MEI_CLIENTS_MAX) {
  dev->hbm_state = MEI_HBM_STARTED;
  mei_host_client_init(dev);

  return 0;
 }

 mei_hbm_hdr(&mei_hdr, len);

 memset(&prop_req, 0, sizeof(struct hbm_props_request));

 prop_req.hbm_cmd = HOST_CLIENT_PROPERTIES_REQ_CMD;
 prop_req.me_addr = addr;

 ret = mei_hbm_write_message(dev, &mei_hdr, &prop_req);
 if (ret) {
  dev_err(dev->dev, "properties request write failed: ret = %d\n",
   ret);
  return ret;
 }

 dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
 mei_schedule_stall_timer(dev);

 return 0;
}
