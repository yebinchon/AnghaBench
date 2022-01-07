
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct saa7164_port {int std; } ;



int saa7164_g_std(struct saa7164_port *port, v4l2_std_id *id)
{
 *id = port->std;
 return 0;
}
