
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int (* set_register ) (struct si470x_device*,size_t) ;int * registers; } ;


 size_t SYSCONFIG1 ;
 int SYSCONFIG1_RDS ;
 int stub1 (struct si470x_device*,size_t) ;

__attribute__((used)) static int si470x_rds_on(struct si470x_device *radio)
{
 int retval;


 radio->registers[SYSCONFIG1] |= SYSCONFIG1_RDS;
 retval = radio->set_register(radio, SYSCONFIG1);
 if (retval < 0)
  radio->registers[SYSCONFIG1] &= ~SYSCONFIG1_RDS;

 return retval;
}
