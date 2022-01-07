
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int qman_channel_id; } ;
struct fman_port {TYPE_1__ dts_params; } ;



u32 fman_port_get_qman_channel_id(struct fman_port *port)
{
 return port->dts_params.qman_channel_id;
}
