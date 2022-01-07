
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct prism2_download_param {int num_areas; } ;
struct prism2_download_area {int dummy; } ;
struct iw_point {int length; int pointer; } ;
struct TYPE_6__ {TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_5__ {int (* download ) (TYPE_2__*,struct prism2_download_param*) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct prism2_download_param*) ;
 int PTR_ERR (struct prism2_download_param*) ;
 int kfree (struct prism2_download_param*) ;
 struct prism2_download_param* memdup_user (int ,int) ;
 int stub1 (TYPE_2__*,struct prism2_download_param*) ;

__attribute__((used)) static int prism2_ioctl_priv_download(local_info_t *local, struct iw_point *p)
{
 struct prism2_download_param *param;
 int ret = 0;

 if (p->length < sizeof(struct prism2_download_param) ||
     p->length > 1024 || !p->pointer)
  return -EINVAL;

 param = memdup_user(p->pointer, p->length);
 if (IS_ERR(param)) {
  return PTR_ERR(param);
 }

 if (p->length < sizeof(struct prism2_download_param) +
     param->num_areas * sizeof(struct prism2_download_area)) {
  ret = -EINVAL;
  goto out;
 }

 ret = local->func->download(local, param);

 out:
 kfree(param);
 return ret;
}
