
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int dummy; } ;
struct input_dev {int dummy; } ;


 struct rc_dev* input_get_drvdata (struct input_dev*) ;
 int rc_open (struct rc_dev*) ;

__attribute__((used)) static int ir_open(struct input_dev *idev)
{
 struct rc_dev *rdev = input_get_drvdata(idev);

 return rc_open(rdev);
}
