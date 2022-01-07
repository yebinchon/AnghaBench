
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef enum mei_cb_file_ops { ____Placeholder_mei_cb_file_ops } mei_cb_file_ops ;


 int MEI_FOP_NOTIFY_START ;
 int MEI_FOP_NOTIFY_STOP ;
 scalar_t__ MEI_HBM_NOTIFICATION_START ;

enum mei_cb_file_ops mei_cl_notify_req2fop(u8 req)
{
 if (req == MEI_HBM_NOTIFICATION_START)
  return MEI_FOP_NOTIFY_START;
 else
  return MEI_FOP_NOTIFY_STOP;
}
