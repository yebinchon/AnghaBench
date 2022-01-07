
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pucan_status_msg {int dummy; } ;
struct pucan_rx_msg {int size; int type; } ;
struct pucan_error_msg {int dummy; } ;
struct peak_canfd_priv {int dummy; } ;






 int le16_to_cpu (int ) ;
 int pucan_handle_cache_critical (struct peak_canfd_priv*) ;
 int pucan_handle_can_rx (struct peak_canfd_priv*,struct pucan_rx_msg*) ;
 int pucan_handle_error (struct peak_canfd_priv*,struct pucan_error_msg*) ;
 int pucan_handle_status (struct peak_canfd_priv*,struct pucan_status_msg*) ;

int peak_canfd_handle_msg(struct peak_canfd_priv *priv,
     struct pucan_rx_msg *msg)
{
 u16 msg_type = le16_to_cpu(msg->type);
 int msg_size = le16_to_cpu(msg->size);
 int err;

 if (!msg_size || !msg_type) {

  goto exit;
 }

 switch (msg_type) {
 case 130:
  err = pucan_handle_can_rx(priv, (struct pucan_rx_msg *)msg);
  break;
 case 129:
  err = pucan_handle_error(priv, (struct pucan_error_msg *)msg);
  break;
 case 128:
  err = pucan_handle_status(priv, (struct pucan_status_msg *)msg);
  break;
 case 131:
  err = pucan_handle_cache_critical(priv);
  break;
 default:
  err = 0;
 }

 if (err < 0)
  return err;

exit:
 return msg_size;
}
