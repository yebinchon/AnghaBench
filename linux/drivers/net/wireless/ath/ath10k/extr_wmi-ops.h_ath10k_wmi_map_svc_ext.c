
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ wmi; } ;
typedef int __le32 ;
struct TYPE_3__ {int (* map_svc_ext ) (int const*,unsigned long*,size_t) ;} ;


 int EOPNOTSUPP ;
 int stub1 (int const*,unsigned long*,size_t) ;

__attribute__((used)) static inline int
ath10k_wmi_map_svc_ext(struct ath10k *ar, const __le32 *in, unsigned long *out,
         size_t len)
{
 if (!ar->wmi.ops->map_svc_ext)
  return -EOPNOTSUPP;

 ar->wmi.ops->map_svc_ext(in, out, len);
 return 0;
}
