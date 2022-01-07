
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;






 int le32_to_cpu (int ) ;

__attribute__((used)) static int rndis_error_status(__le32 rndis_status)
{
 int ret = -EINVAL;
 switch (le32_to_cpu(rndis_status)) {
 case 128:
  ret = 0;
  break;
 case 131:
 case 130:
  ret = -EINVAL;
  break;
 case 129:
  ret = -EOPNOTSUPP;
  break;
 case 132:
 case 133:
  ret = -EBUSY;
  break;
 }
 return ret;
}
