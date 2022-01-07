
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_format {int dummy; } ;
struct ceu_device {int dummy; } ;


 int __ceu_try_fmt (struct ceu_device*,struct v4l2_format*,int *) ;

__attribute__((used)) static int ceu_try_fmt(struct ceu_device *ceudev, struct v4l2_format *v4l2_fmt)
{
 u32 mbus_code;

 return __ceu_try_fmt(ceudev, v4l2_fmt, &mbus_code);
}
