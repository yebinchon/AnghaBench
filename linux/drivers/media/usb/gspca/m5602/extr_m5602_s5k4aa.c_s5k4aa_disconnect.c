
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int * sensor; } ;



void s5k4aa_disconnect(struct sd *sd)
{
 sd->sensor = ((void*)0);
}
