
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_port {int dummy; } ;


 int smi_dvb_exit (struct smi_port*) ;
 int smi_fe_exit (struct smi_port*) ;
 int smi_port_exit (struct smi_port*) ;

__attribute__((used)) static void smi_port_detach(struct smi_port *port)
{
 smi_fe_exit(port);
 smi_dvb_exit(port);
 smi_port_exit(port);
}
