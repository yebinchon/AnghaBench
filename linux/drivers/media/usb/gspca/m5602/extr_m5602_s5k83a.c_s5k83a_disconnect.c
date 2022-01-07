
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int * sensor; } ;


 int s5k83a_stop (struct sd*) ;

void s5k83a_disconnect(struct sd *sd)
{
 s5k83a_stop(sd);

 sd->sensor = ((void*)0);
}
