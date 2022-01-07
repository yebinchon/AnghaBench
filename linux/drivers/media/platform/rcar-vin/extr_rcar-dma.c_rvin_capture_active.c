
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvin_dev {int dummy; } ;


 int VNMS_CA ;
 int VNMS_REG ;
 int rvin_read (struct rvin_dev*,int ) ;

__attribute__((used)) static bool rvin_capture_active(struct rvin_dev *vin)
{
 return rvin_read(vin, VNMS_REG) & VNMS_CA;
}
