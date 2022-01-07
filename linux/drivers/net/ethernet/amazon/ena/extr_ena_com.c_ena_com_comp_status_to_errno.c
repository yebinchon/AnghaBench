
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;







 int ENOMEM ;
 int EOPNOTSUPP ;
 int pr_err (char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_com_comp_status_to_errno(u8 comp_status)
{
 if (unlikely(comp_status != 0))
  pr_err("admin command failed[%u]\n", comp_status);

 if (unlikely(comp_status > 129))
  return -EINVAL;

 switch (comp_status) {
 case 130:
  return 0;
 case 131:
  return -ENOMEM;
 case 128:
  return -EOPNOTSUPP;
 case 134:
 case 132:
 case 133:
 case 129:
  return -EINVAL;
 }

 return 0;
}
