
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7164_port {int dummy; } ;


 int saa7164_vbi_configure (struct saa7164_port*) ;

__attribute__((used)) static int saa7164_vbi_initialize(struct saa7164_port *port)
{
 saa7164_vbi_configure(port);
 return 0;
}
