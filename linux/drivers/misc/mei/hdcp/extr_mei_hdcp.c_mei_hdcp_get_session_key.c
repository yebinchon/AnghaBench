
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {scalar_t__ status; } ;
struct TYPE_7__ {int member_0; } ;
struct wired_cmd_get_session_key_out {int r_iv; int e_dkey_ks; TYPE_5__ header; TYPE_2__ member_0; } ;
struct TYPE_9__ {int physical_port; int integrated_port_type; } ;
struct TYPE_8__ {int buffer_len; scalar_t__ status; int command_id; int api_version; } ;
struct TYPE_6__ {int member_0; } ;
struct wired_cmd_get_session_key_in {TYPE_4__ port; TYPE_3__ header; TYPE_1__ member_0; } ;
struct mei_cl_device {int dummy; } ;
struct hdcp_port_data {int port; int port_type; } ;
struct hdcp2_ske_send_eks {int riv; int e_dkey_ks; int msg_id; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int get_skey_out ;
typedef int get_skey_in ;


 int EINVAL ;
 int EIO ;
 int HDCP_2_2_E_DKEY_KS_LEN ;
 int HDCP_2_2_RIV_LEN ;
 int HDCP_2_2_SKE_SEND_EKS ;
 int HDCP_API_VERSION ;
 scalar_t__ ME_HDCP_STATUS_SUCCESS ;
 int WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN ;
 int WIRED_GET_SESSION_KEY ;
 int dev_dbg (struct device*,char*,scalar_t__,...) ;
 scalar_t__ mei_cldev_recv (struct mei_cl_device*,int *,int) ;
 scalar_t__ mei_cldev_send (struct mei_cl_device*,int *,int) ;
 int mei_get_ddi_index (int ) ;
 int memcpy (int ,int ,int ) ;
 struct mei_cl_device* to_mei_cl_device (struct device*) ;

__attribute__((used)) static int mei_hdcp_get_session_key(struct device *dev,
        struct hdcp_port_data *data,
        struct hdcp2_ske_send_eks *ske_data)
{
 struct wired_cmd_get_session_key_in get_skey_in = { { 0 } };
 struct wired_cmd_get_session_key_out get_skey_out = { { 0 } };
 struct mei_cl_device *cldev;
 ssize_t byte;

 if (!dev || !data || !ske_data)
  return -EINVAL;

 cldev = to_mei_cl_device(dev);

 get_skey_in.header.api_version = HDCP_API_VERSION;
 get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
 get_skey_in.header.status = ME_HDCP_STATUS_SUCCESS;
 get_skey_in.header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;

 get_skey_in.port.integrated_port_type = data->port_type;
 get_skey_in.port.physical_port = mei_get_ddi_index(data->port);

 byte = mei_cldev_send(cldev, (u8 *)&get_skey_in, sizeof(get_skey_in));
 if (byte < 0) {
  dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte);
  return byte;
 }

 byte = mei_cldev_recv(cldev, (u8 *)&get_skey_out, sizeof(get_skey_out));

 if (byte < 0) {
  dev_dbg(dev, "mei_cldev_recv failed. %zd\n", byte);
  return byte;
 }

 if (get_skey_out.header.status != ME_HDCP_STATUS_SUCCESS) {
  dev_dbg(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
   WIRED_GET_SESSION_KEY, get_skey_out.header.status);
  return -EIO;
 }

 ske_data->msg_id = HDCP_2_2_SKE_SEND_EKS;
 memcpy(ske_data->e_dkey_ks, get_skey_out.e_dkey_ks,
        HDCP_2_2_E_DKEY_KS_LEN);
 memcpy(ske_data->riv, get_skey_out.r_iv, HDCP_2_2_RIV_LEN);

 return 0;
}
