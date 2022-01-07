
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mei_cl_connect_status { ____Placeholder_mei_cl_connect_status } mei_cl_connect_status ;


 int EBUSY ;
 int EINVAL ;
 int ENOTTY ;







__attribute__((used)) static int mei_cl_conn_status_to_errno(enum mei_cl_connect_status status)
{
 switch (status) {
 case 128: return 0;
 case 130: return -ENOTTY;
 case 133: return -EBUSY;
 case 129: return -EBUSY;
 case 132: return -EINVAL;
 case 131: return -EBUSY;
 default: return -EINVAL;
 }
}
