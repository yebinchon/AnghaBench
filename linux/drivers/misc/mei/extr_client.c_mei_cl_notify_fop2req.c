
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mei_cb_file_ops { ____Placeholder_mei_cb_file_ops } mei_cb_file_ops ;


 int MEI_FOP_NOTIFY_START ;
 int MEI_HBM_NOTIFICATION_START ;
 int MEI_HBM_NOTIFICATION_STOP ;

u8 mei_cl_notify_fop2req(enum mei_cb_file_ops fop)
{
 if (fop == MEI_FOP_NOTIFY_START)
  return MEI_HBM_NOTIFICATION_START;
 else
  return MEI_HBM_NOTIFICATION_STOP;
}
