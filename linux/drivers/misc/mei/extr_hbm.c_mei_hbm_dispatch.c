
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mei_msg_hdr {int length; } ;
struct mei_hbm_cl_cmd {int dummy; } ;
struct TYPE_3__ {int minor_version; int major_version; } ;
struct mei_device {scalar_t__ hbm_state; int dev; int dev_state; int init_clients_timer; int me_clients_map; int hbm_f_dr_supported; int wait_hbm_start; TYPE_1__ version; scalar_t__ rd_msg_buf; } ;
struct mei_bus_message {int hbm_cmd; } ;
struct hbm_props_response {int me_addr; int status; } ;
struct TYPE_4__ {int minor_version; int major_version; } ;
struct hbm_host_version_response {TYPE_2__ me_max_version; int host_version_supported; } ;
struct hbm_host_enum_response {int valid_addresses; } ;
struct hbm_flow_control {int dummy; } ;
struct hbm_dma_setup_response {int status; } ;
struct hbm_client_connect_request {int dummy; } ;
struct hbm_add_client_request {int dummy; } ;


 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;



 int EIO ;
 int EPROTO ;
 int HBM_MAJOR_VERSION ;
 int HBM_MINOR_VERSION ;




 int MEI_DEV_INIT_CLIENTS ;
 int MEI_DEV_POWER_DOWN ;

 int MEI_FOP_CONNECT ;
 int MEI_FOP_DISCONNECT ;
 int MEI_HBMS_CLIENT_NOT_FOUND ;
 int MEI_HBMS_NOT_ALLOWED ;

 scalar_t__ MEI_HBM_CLIENT_PROPERTIES ;

 scalar_t__ MEI_HBM_DR_SETUP ;
 scalar_t__ MEI_HBM_ENUM_CLIENTS ;
 scalar_t__ MEI_HBM_IDLE ;


 scalar_t__ MEI_HBM_STARTING ;
 void* MEI_HBM_STOPPED ;



 int WARN (int,char*,int) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 int mei_dma_ring_is_allocated (struct mei_device*) ;
 int mei_dmam_ring_alloc (struct mei_device*) ;
 int mei_dmam_ring_free (struct mei_device*) ;
 int mei_hbm_cl_notify (struct mei_device*,struct mei_hbm_cl_cmd*) ;
 int mei_hbm_cl_res (struct mei_device*,struct mei_hbm_cl_cmd*,int ) ;
 int mei_hbm_cl_tx_flow_ctrl_creds_res (struct mei_device*,struct hbm_flow_control*) ;
 int mei_hbm_config_features (struct mei_device*) ;
 int mei_hbm_dma_setup_req (struct mei_device*) ;
 int mei_hbm_enum_clients_req (struct mei_device*) ;
 int mei_hbm_fw_add_cl_req (struct mei_device*,struct hbm_add_client_request*) ;
 int mei_hbm_fw_disconnect_req (struct mei_device*,struct hbm_client_connect_request*) ;
 int mei_hbm_me_cl_add (struct mei_device*,struct hbm_props_response*) ;
 int mei_hbm_pg_enter_res (struct mei_device*) ;
 int mei_hbm_pg_exit_res (struct mei_device*) ;
 int mei_hbm_prop_req (struct mei_device*,int ) ;
 int mei_hbm_status_str (int ) ;
 int mei_hbm_stop_req (struct mei_device*) ;
 int mei_hbm_version_is_supported (struct mei_device*) ;
 int mei_read_slots (struct mei_device*,scalar_t__,int) ;
 int memcpy (int ,int ,int) ;
 int notify_res_to_fop (struct mei_hbm_cl_cmd*) ;
 int wake_up (int *) ;

int mei_hbm_dispatch(struct mei_device *dev, struct mei_msg_hdr *hdr)
{
 struct mei_bus_message *mei_msg;
 struct hbm_host_version_response *version_res;
 struct hbm_props_response *props_res;
 struct hbm_host_enum_response *enum_res;
 struct hbm_dma_setup_response *dma_setup_res;
 struct hbm_add_client_request *add_cl_req;
 int ret;

 struct mei_hbm_cl_cmd *cl_cmd;
 struct hbm_client_connect_request *disconnect_req;
 struct hbm_flow_control *fctrl;


 BUG_ON(hdr->length >= sizeof(dev->rd_msg_buf));
 mei_read_slots(dev, dev->rd_msg_buf, hdr->length);
 mei_msg = (struct mei_bus_message *)dev->rd_msg_buf;
 cl_cmd = (struct mei_hbm_cl_cmd *)mei_msg;




 if (dev->hbm_state == MEI_HBM_IDLE) {
  dev_dbg(dev->dev, "hbm: state is idle ignore spurious messages\n");
  return 0;
 }

 switch (mei_msg->hbm_cmd) {
 case 137:
  dev_dbg(dev->dev, "hbm: start: response message received.\n");

  dev->init_clients_timer = 0;

  version_res = (struct hbm_host_version_response *)mei_msg;

  dev_dbg(dev->dev, "HBM VERSION: DRIVER=%02d:%02d DEVICE=%02d:%02d\n",
    HBM_MAJOR_VERSION, HBM_MINOR_VERSION,
    version_res->me_max_version.major_version,
    version_res->me_max_version.minor_version);

  if (version_res->host_version_supported) {
   dev->version.major_version = HBM_MAJOR_VERSION;
   dev->version.minor_version = HBM_MINOR_VERSION;
  } else {
   dev->version.major_version =
    version_res->me_max_version.major_version;
   dev->version.minor_version =
    version_res->me_max_version.minor_version;
  }

  if (!mei_hbm_version_is_supported(dev)) {
   dev_warn(dev->dev, "hbm: start: version mismatch - stopping the driver.\n");

   dev->hbm_state = MEI_HBM_STOPPED;
   if (mei_hbm_stop_req(dev)) {
    dev_err(dev->dev, "hbm: start: failed to send stop request\n");
    return -EIO;
   }
   break;
  }

  mei_hbm_config_features(dev);

  if (dev->dev_state != MEI_DEV_INIT_CLIENTS ||
      dev->hbm_state != MEI_HBM_STARTING) {
   dev_err(dev->dev, "hbm: start: state mismatch, [%d, %d]\n",
    dev->dev_state, dev->hbm_state);
   return -EPROTO;
  }

  if (dev->hbm_f_dr_supported) {
   if (mei_dmam_ring_alloc(dev))
    dev_info(dev->dev, "running w/o dma ring\n");
   if (mei_dma_ring_is_allocated(dev)) {
    if (mei_hbm_dma_setup_req(dev))
     return -EIO;

    wake_up(&dev->wait_hbm_start);
    break;
   }
  }

  dev->hbm_f_dr_supported = 0;
  mei_dmam_ring_free(dev);

  if (mei_hbm_enum_clients_req(dev))
   return -EIO;

  wake_up(&dev->wait_hbm_start);
  break;

 case 133:
  dev_dbg(dev->dev, "hbm: dma setup response: message received.\n");

  dev->init_clients_timer = 0;

  if (dev->hbm_state != MEI_HBM_DR_SETUP) {
   dev_err(dev->dev, "hbm: dma setup response: state mismatch, [%d, %d]\n",
    dev->dev_state, dev->hbm_state);
   return -EPROTO;
  }

  dma_setup_res = (struct hbm_dma_setup_response *)mei_msg;

  if (dma_setup_res->status) {
   u8 status = dma_setup_res->status;

   if (status == MEI_HBMS_NOT_ALLOWED) {
    dev_dbg(dev->dev, "hbm: dma setup not allowed\n");
   } else {
    dev_info(dev->dev, "hbm: dma setup response: failure = %d %s\n",
      status,
      mei_hbm_status_str(status));
   }
   dev->hbm_f_dr_supported = 0;
   mei_dmam_ring_free(dev);
  }

  if (mei_hbm_enum_clients_req(dev))
   return -EIO;
  break;

 case 142:
  dev_dbg(dev->dev, "hbm: client connect response: message received.\n");
  mei_hbm_cl_res(dev, cl_cmd, MEI_FOP_CONNECT);
  break;

 case 140:
  dev_dbg(dev->dev, "hbm: client disconnect response: message received.\n");
  mei_hbm_cl_res(dev, cl_cmd, MEI_FOP_DISCONNECT);
  break;

 case 135:
  dev_dbg(dev->dev, "hbm: client flow control response: message received.\n");

  fctrl = (struct hbm_flow_control *)mei_msg;
  mei_hbm_cl_tx_flow_ctrl_creds_res(dev, fctrl);
  break;

 case 130:
  dev_dbg(dev->dev, "hbm: power gate isolation entry response received\n");
  ret = mei_hbm_pg_enter_res(dev);
  if (ret)
   return ret;
  break;

 case 129:
  dev_dbg(dev->dev, "hbm: power gate isolation exit request received\n");
  ret = mei_hbm_pg_exit_res(dev);
  if (ret)
   return ret;
  break;

 case 139:
  dev_dbg(dev->dev, "hbm: properties response: message received.\n");

  dev->init_clients_timer = 0;

  if (dev->dev_state != MEI_DEV_INIT_CLIENTS ||
      dev->hbm_state != MEI_HBM_CLIENT_PROPERTIES) {
   dev_err(dev->dev, "hbm: properties response: state mismatch, [%d, %d]\n",
    dev->dev_state, dev->hbm_state);
   return -EPROTO;
  }

  props_res = (struct hbm_props_response *)mei_msg;

  if (props_res->status == MEI_HBMS_CLIENT_NOT_FOUND) {
   dev_dbg(dev->dev, "hbm: properties response: %d CLIENT_NOT_FOUND\n",
    props_res->me_addr);
  } else if (props_res->status) {
   dev_err(dev->dev, "hbm: properties response: wrong status = %d %s\n",
    props_res->status,
    mei_hbm_status_str(props_res->status));
   return -EPROTO;
  } else {
   mei_hbm_me_cl_add(dev, props_res);
  }


  if (mei_hbm_prop_req(dev, props_res->me_addr + 1))
   return -EIO;

  break;

 case 138:
  dev_dbg(dev->dev, "hbm: enumeration response: message received\n");

  dev->init_clients_timer = 0;

  enum_res = (struct hbm_host_enum_response *) mei_msg;
  BUILD_BUG_ON(sizeof(dev->me_clients_map)
    < sizeof(enum_res->valid_addresses));
  memcpy(dev->me_clients_map, enum_res->valid_addresses,
    sizeof(enum_res->valid_addresses));

  if (dev->dev_state != MEI_DEV_INIT_CLIENTS ||
      dev->hbm_state != MEI_HBM_ENUM_CLIENTS) {
   dev_err(dev->dev, "hbm: enumeration response: state mismatch, [%d, %d]\n",
    dev->dev_state, dev->hbm_state);
   return -EPROTO;
  }

  dev->hbm_state = MEI_HBM_CLIENT_PROPERTIES;


  if (mei_hbm_prop_req(dev, 0))
   return -EIO;

  break;

 case 136:
  dev_dbg(dev->dev, "hbm: stop response: message received\n");

  dev->init_clients_timer = 0;

  if (dev->hbm_state != MEI_HBM_STOPPED) {
   dev_err(dev->dev, "hbm: stop response: state mismatch, [%d, %d]\n",
    dev->dev_state, dev->hbm_state);
   return -EPROTO;
  }

  dev->dev_state = MEI_DEV_POWER_DOWN;
  dev_info(dev->dev, "hbm: stop response: resetting.\n");

  return -EPROTO;
  break;

 case 141:
  dev_dbg(dev->dev, "hbm: disconnect request: message received\n");

  disconnect_req = (struct hbm_client_connect_request *)mei_msg;
  mei_hbm_fw_disconnect_req(dev, disconnect_req);
  break;

 case 128:
  dev_dbg(dev->dev, "hbm: stop request: message received\n");
  dev->hbm_state = MEI_HBM_STOPPED;
  if (mei_hbm_stop_req(dev)) {
   dev_err(dev->dev, "hbm: stop request: failed to send stop request\n");
   return -EIO;
  }
  break;

 case 134:
  dev_dbg(dev->dev, "hbm: add client request received\n");




  if (dev->hbm_state <= MEI_HBM_ENUM_CLIENTS ||
      dev->hbm_state >= MEI_HBM_STOPPED) {
   dev_err(dev->dev, "hbm: add client: state mismatch, [%d, %d]\n",
    dev->dev_state, dev->hbm_state);
   return -EPROTO;
  }
  add_cl_req = (struct hbm_add_client_request *)mei_msg;
  ret = mei_hbm_fw_add_cl_req(dev, add_cl_req);
  if (ret) {
   dev_err(dev->dev, "hbm: add client: failed to send response %d\n",
    ret);
   return -EIO;
  }
  dev_dbg(dev->dev, "hbm: add client request processed\n");
  break;

 case 131:
  dev_dbg(dev->dev, "hbm: notify response received\n");
  mei_hbm_cl_res(dev, cl_cmd, notify_res_to_fop(cl_cmd));
  break;

 case 132:
  dev_dbg(dev->dev, "hbm: notification\n");
  mei_hbm_cl_notify(dev, cl_cmd);
  break;

 default:
  WARN(1, "hbm: wrong command %d\n", mei_msg->hbm_cmd);
  return -EPROTO;

 }
 return 0;
}
