
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_port {scalar_t__ enable; int tasklet; } ;


 int smi_port_disableInterrupt (struct smi_port*) ;
 int smi_port_dma_free (struct smi_port*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void smi_port_exit(struct smi_port *port)
{
 smi_port_disableInterrupt(port);
 tasklet_kill(&port->tasklet);
 smi_port_dma_free(port);
 port->enable = 0;
}
