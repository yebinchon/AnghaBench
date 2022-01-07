
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvin_dev {int dummy; } ;


 int VNINTS_REG ;
 int rvin_read (struct rvin_dev*,int ) ;
 int rvin_write (struct rvin_dev*,int ,int ) ;

__attribute__((used)) static void rvin_ack_interrupt(struct rvin_dev *vin)
{
 rvin_write(vin, rvin_read(vin, VNINTS_REG), VNINTS_REG);
}
