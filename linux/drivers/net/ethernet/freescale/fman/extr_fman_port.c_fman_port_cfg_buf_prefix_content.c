
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fman_port {TYPE_2__* cfg; } ;
struct fman_buffer_prefix_content {int dummy; } ;
struct TYPE_3__ {scalar_t__ data_align; } ;
struct TYPE_4__ {TYPE_1__ buffer_prefix_content; } ;


 scalar_t__ DFLT_PORT_BUFFER_PREFIX_CONTEXT_DATA_ALIGN ;
 int EINVAL ;
 scalar_t__ is_init_done (TYPE_2__*) ;
 int memcpy (TYPE_1__*,struct fman_buffer_prefix_content*,int) ;

int fman_port_cfg_buf_prefix_content(struct fman_port *port,
         struct fman_buffer_prefix_content *
         buffer_prefix_content)
{
 if (is_init_done(port->cfg))
  return -EINVAL;

 memcpy(&port->cfg->buffer_prefix_content,
        buffer_prefix_content,
        sizeof(struct fman_buffer_prefix_content));



 if (!port->cfg->buffer_prefix_content.data_align)
  port->cfg->buffer_prefix_content.data_align =
  DFLT_PORT_BUFFER_PREFIX_CONTEXT_DATA_ALIGN;

 return 0;
}
