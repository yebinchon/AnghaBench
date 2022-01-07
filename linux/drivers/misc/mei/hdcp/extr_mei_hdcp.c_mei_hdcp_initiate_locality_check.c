
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
struct wired_cmd_init_locality_check_out {int r_n; TYPE_5__ header; TYPE_2__ member_0; } ;
struct TYPE_9__ {int physical_port; int integrated_port_type; } ;
struct TYPE_8__ {int buffer_len; scalar_t__ status; int command_id; int api_version; } ;
struct TYPE_6__ {int member_0; } ;
struct wired_cmd_init_locality_check_in {TYPE_4__ port; TYPE_3__ header; TYPE_1__ member_0; } ;
struct mei_cl_device {int dummy; } ;
struct hdcp_port_data {int port; int port_type; } ;
struct hdcp2_lc_init {int r_n; int msg_id; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int lc_init_out ;
typedef int lc_init_in ;


 int EINVAL ;
 int EIO ;
 int HDCP_2_2_LC_INIT ;
 int HDCP_2_2_RN_LEN ;
 int HDCP_API_VERSION ;
 scalar_t__ ME_HDCP_STATUS_SUCCESS ;
 int WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN ;
 int WIRED_INIT_LOCALITY_CHECK ;
 int dev_dbg (struct device*,char*,scalar_t__,...) ;
 scalar_t__ mei_cldev_recv (struct mei_cl_device*,int *,int) ;
 scalar_t__ mei_cldev_send (struct mei_cl_device*,int *,int) ;
 int mei_get_ddi_index (int ) ;
 int memcpy (int ,int ,int ) ;
 struct mei_cl_device* to_mei_cl_device (struct device*) ;

__attribute__((used)) static int
mei_hdcp_initiate_locality_check(struct device *dev,
     struct hdcp_port_data *data,
     struct hdcp2_lc_init *lc_init_data)
{
 struct wired_cmd_init_locality_check_in lc_init_in = { { 0 } };
 struct wired_cmd_init_locality_check_out lc_init_out = { { 0 } };
 struct mei_cl_device *cldev;
 ssize_t byte;

 if (!dev || !data || !lc_init_data)
  return -EINVAL;

 cldev = to_mei_cl_device(dev);

 lc_init_in.header.api_version = HDCP_API_VERSION;
 lc_init_in.header.command_id = WIRED_INIT_LOCALITY_CHECK;
 lc_init_in.header.status = ME_HDCP_STATUS_SUCCESS;
 lc_init_in.header.buffer_len = WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;

 lc_init_in.port.integrated_port_type = data->port_type;
 lc_init_in.port.physical_port = mei_get_ddi_index(data->port);

 byte = mei_cldev_send(cldev, (u8 *)&lc_init_in, sizeof(lc_init_in));
 if (byte < 0) {
  dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte);
  return byte;
 }

 byte = mei_cldev_recv(cldev, (u8 *)&lc_init_out, sizeof(lc_init_out));
 if (byte < 0) {
  dev_dbg(dev, "mei_cldev_recv failed. %zd\n", byte);
  return byte;
 }

 if (lc_init_out.header.status != ME_HDCP_STATUS_SUCCESS) {
  dev_dbg(dev, "ME cmd 0x%08X Failed. status: 0x%X\n",
   WIRED_INIT_LOCALITY_CHECK, lc_init_out.header.status);
  return -EIO;
 }

 lc_init_data->msg_id = HDCP_2_2_LC_INIT;
 memcpy(lc_init_data->r_n, lc_init_out.r_n, HDCP_2_2_RN_LEN);

 return 0;
}
