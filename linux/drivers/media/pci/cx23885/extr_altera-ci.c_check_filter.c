
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_internal {TYPE_1__** pid_filt; } ;
struct TYPE_2__ {void* demux; } ;



__attribute__((used)) static struct fpga_internal *check_filter(struct fpga_internal *temp_int,
      void *demux_dev, int filt_nr)
{
 if (temp_int == ((void*)0))
  return ((void*)0);

 if ((temp_int->pid_filt[filt_nr]) == ((void*)0))
  return ((void*)0);

 if (temp_int->pid_filt[filt_nr]->demux == demux_dev)
  return temp_int;

 return ((void*)0);
}
