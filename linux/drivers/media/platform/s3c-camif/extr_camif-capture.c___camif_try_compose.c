
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_rect {int dummy; } ;
struct TYPE_4__ {struct v4l2_rect rect; } ;
struct camif_vp {TYPE_2__ out_frame; } ;
struct camif_dev {TYPE_1__* variant; } ;
struct TYPE_3__ {scalar_t__ ip_revision; } ;


 scalar_t__ S3C244X_CAMIF_IP_REV ;

__attribute__((used)) static void __camif_try_compose(struct camif_dev *camif, struct camif_vp *vp,
    struct v4l2_rect *r)
{

 if (camif->variant->ip_revision == S3C244X_CAMIF_IP_REV) {
  *r = vp->out_frame.rect;
  return;
 }


}
