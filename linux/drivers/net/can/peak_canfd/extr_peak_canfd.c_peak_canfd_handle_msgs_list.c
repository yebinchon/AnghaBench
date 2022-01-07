
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pucan_rx_msg {int dummy; } ;
struct peak_canfd_priv {int dummy; } ;


 int ALIGN (int,int) ;
 int peak_canfd_handle_msg (struct peak_canfd_priv*,void*) ;

int peak_canfd_handle_msgs_list(struct peak_canfd_priv *priv,
    struct pucan_rx_msg *msg_list, int msg_count)
{
 void *msg_ptr = msg_list;
 int i, msg_size = 0;

 for (i = 0; i < msg_count; i++) {
  msg_size = peak_canfd_handle_msg(priv, msg_ptr);


  if (msg_size <= 0)
   break;

  msg_ptr += ALIGN(msg_size, 4);
 }

 if (msg_size < 0)
  return msg_size;

 return i;
}
