
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int default_value; int step; int maximum; int minimum; int type; int name; int flags; int id; } ;
struct v4l2_query_ext_ctrl {int default_value; int step; int maximum; int minimum; int name; int flags; int type; int id; int member_0; } ;
struct v4l2_ctrl_handler {int dummy; } ;
 int strscpy (int ,int ,int) ;
 int v4l2_query_ext_ctrl (struct v4l2_ctrl_handler*,struct v4l2_query_ext_ctrl*) ;

int v4l2_queryctrl(struct v4l2_ctrl_handler *hdl, struct v4l2_queryctrl *qc)
{
 struct v4l2_query_ext_ctrl qec = { qc->id };
 int rc;

 rc = v4l2_query_ext_ctrl(hdl, &qec);
 if (rc)
  return rc;

 qc->id = qec.id;
 qc->type = qec.type;
 qc->flags = qec.flags;
 strscpy(qc->name, qec.name, sizeof(qc->name));
 switch (qc->type) {
 case 131:
 case 132:
 case 129:
 case 130:
 case 128:
 case 133:
  qc->minimum = qec.minimum;
  qc->maximum = qec.maximum;
  qc->step = qec.step;
  qc->default_value = qec.default_value;
  break;
 default:
  qc->minimum = 0;
  qc->maximum = 0;
  qc->step = 0;
  qc->default_value = 0;
  break;
 }
 return 0;
}
