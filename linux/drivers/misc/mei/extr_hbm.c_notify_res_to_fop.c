
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_hbm_cl_cmd {int dummy; } ;
struct hbm_notification_response {int start; } ;
typedef enum mei_cb_file_ops { ____Placeholder_mei_cb_file_ops } mei_cb_file_ops ;


 int mei_cl_notify_req2fop (int ) ;

__attribute__((used)) static inline enum mei_cb_file_ops notify_res_to_fop(struct mei_hbm_cl_cmd *cmd)
{
 struct hbm_notification_response *rs =
  (struct hbm_notification_response *)cmd;

 return mei_cl_notify_req2fop(rs->start);
}
