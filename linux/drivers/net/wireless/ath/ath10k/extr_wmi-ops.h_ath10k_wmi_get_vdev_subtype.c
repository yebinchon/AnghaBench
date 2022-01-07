
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ wmi; } ;
typedef enum wmi_vdev_subtype { ____Placeholder_wmi_vdev_subtype } wmi_vdev_subtype ;
struct TYPE_3__ {int (* get_vdev_subtype ) (struct ath10k*,int) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct ath10k*,int) ;

__attribute__((used)) static inline int
ath10k_wmi_get_vdev_subtype(struct ath10k *ar, enum wmi_vdev_subtype subtype)
{
 if (!ar->wmi.ops->get_vdev_subtype)
  return -EOPNOTSUPP;

 return ar->wmi.ops->get_vdev_subtype(ar, subtype);
}
