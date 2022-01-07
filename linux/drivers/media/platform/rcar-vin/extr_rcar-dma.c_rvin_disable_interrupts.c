
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvin_dev {int dummy; } ;


 int VNIE_REG ;
 int rvin_write (struct rvin_dev*,int ,int ) ;

__attribute__((used)) static void rvin_disable_interrupts(struct rvin_dev *vin)
{
 rvin_write(vin, 0, VNIE_REG);
}
