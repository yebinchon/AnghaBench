
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
struct wired_cmd_ake_send_hprime_out {TYPE_5__ header; TYPE_2__ member_0; } ;
struct TYPE_9__ {int physical_port; int integrated_port_type; } ;
struct TYPE_8__ {int buffer_len; scalar_t__ status; int command_id; int api_version; } ;
struct TYPE_6__ {int member_0; } ;
struct wired_cmd_ake_send_hprime_in {int h_prime; TYPE_4__ port; TYPE_3__ header; TYPE_1__ member_0; } ;
struct mei_cl_device {int dummy; } ;
struct hdcp_port_data {int port; int port_type; } ;
struct hdcp2_ake_send_hprime {int h_prime; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int send_hprime_out ;
typedef int send_hprime_in ;


 int EINVAL ;
 int EIO ;
 int HDCP_2_2_H_PRIME_LEN ;
 int HDCP_API_VERSION ;
 scalar_t__ ME_HDCP_STATUS_SUCCESS ;
 int WIRED_AKE_SEND_HPRIME ;
 int WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN ;
 int dev_dbg (struct device*,char*,scalar_t__,...) ;
 scalar_t__ mei_cldev_recv (struct mei_cl_device*,int *,int) ;
 scalar_t__ mei_cldev_send (struct mei_cl_device*,int *,int) ;
 int mei_get_ddi_index (int ) ;
 int memcpy (int ,int ,int ) ;
 struct mei_cl_device* to_mei_cl_device (struct device*) ;

__attribute__((used)) static int
mei_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data,
         struct hdcp2_ake_send_hprime *rx_hprime)
{
 struct wired_cmd_ake_send_hprime_in send_hprime_in = { { 0 } };
 struct wired_cmd_ake_send_hprime_out send_hprime_out = { { 0 } };
 struct mei_cl_device *cldev;
 ssize_t byte;

 if (!dev || !data || !rx_hprime)
  return -EINVAL;

 cldev = to_mei_cl_device(dev);

 send_hprime_in.header.api_version = HDCP_API_VERSION;
 send_hprime_in.header.command_id = WIRED_AKE_SEND_HPRIME;
 send_hprime_in.header.status = ME_HDCP_STATUS_SUCCESS;
 send_hprime_in.header.buffer_len = WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;

 send_hprime_in.port.integrated_port_type = data->port_type;
 send_hprime_in.port.physical_port = mei_get_ddi_index(data->port);

 memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
        HDCP_2_2_H_PRIME_LEN);

 byte = mei_cldev_send(cldev, (u8 *)&send_hprime_in,
         sizeof(send_hprime_in));
 if (byte < 0) {
  dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte);
  return byte;
 }

 byte = mei_cldev_recv(cldev, (u8 *)&send_hprime_out,
         sizeof(send_hprime_out));
 if (byte < 0) {
  dev_dbg(dev, "mei_cldev_recv failed. %zd\n", byte);
  return byte;
 }

 if (send_hprime_out.header.status != ME_HDCP_STATUS_SUCCESS) {
  dev_dbg(dev, "ME cmd 0x%08X Failed. Status: 0x%X\n",
   WIRED_AKE_SEND_HPRIME, send_hprime_out.header.status);
  return -EIO;
 }

 return 0;
}
