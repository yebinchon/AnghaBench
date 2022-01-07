
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ time_stamp_offset; } ;
struct fman_port {TYPE_1__ buffer_offsets; } ;
typedef int __be64 ;


 int EINVAL ;
 scalar_t__ ILLEGAL_BASE ;
 int be64_to_cpu (int ) ;

int fman_port_get_tstamp(struct fman_port *port, const void *data, u64 *tstamp)
{
 if (port->buffer_offsets.time_stamp_offset == ILLEGAL_BASE)
  return -EINVAL;

 *tstamp = be64_to_cpu(*(__be64 *)(data +
   port->buffer_offsets.time_stamp_offset));

 return 0;
}
