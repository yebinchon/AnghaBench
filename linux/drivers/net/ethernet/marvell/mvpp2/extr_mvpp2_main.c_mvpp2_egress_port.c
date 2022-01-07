
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_port {int id; } ;


 int MVPP2_MAX_TCONT ;

__attribute__((used)) static inline int mvpp2_egress_port(struct mvpp2_port *port)
{
 return MVPP2_MAX_TCONT + port->id;
}
