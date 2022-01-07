
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvin_dev {int dummy; } ;


 int VNFC_REG ;
 int VNMC_ME ;
 int VNMC_REG ;
 int rvin_read (struct rvin_dev*,int ) ;
 int rvin_write (struct rvin_dev*,int,int ) ;

__attribute__((used)) static void rvin_capture_stop(struct rvin_dev *vin)
{

 rvin_write(vin, 0, VNFC_REG);


 rvin_write(vin, rvin_read(vin, VNMC_REG) & ~VNMC_ME, VNMC_REG);
}
