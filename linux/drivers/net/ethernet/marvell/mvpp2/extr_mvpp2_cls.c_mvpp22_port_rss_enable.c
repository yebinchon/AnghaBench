
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_port {int dummy; } ;


 int EINVAL ;
 scalar_t__ mvpp22_rss_ctx (struct mvpp2_port*,int ) ;
 int mvpp2_rss_port_c2_enable (struct mvpp2_port*,scalar_t__) ;

int mvpp22_port_rss_enable(struct mvpp2_port *port)
{
 if (mvpp22_rss_ctx(port, 0) < 0)
  return -EINVAL;

 mvpp2_rss_port_c2_enable(port, mvpp22_rss_ctx(port, 0));

 return 0;
}
