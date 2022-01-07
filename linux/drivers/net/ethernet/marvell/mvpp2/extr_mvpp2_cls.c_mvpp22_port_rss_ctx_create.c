
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {scalar_t__* rss_ctx; } ;


 int EINVAL ;
 int MVPP22_N_RSS_TABLES ;
 int mvpp22_rss_context_create (struct mvpp2_port*,int*) ;

int mvpp22_port_rss_ctx_create(struct mvpp2_port *port, u32 *port_ctx)
{
 u32 rss_ctx;
 int ret, i;

 ret = mvpp22_rss_context_create(port, &rss_ctx);
 if (ret)
  return ret;




 for (i = 1; i < MVPP22_N_RSS_TABLES; i++) {
  if (port->rss_ctx[i] < 0)
   break;
 }

 if (i == MVPP22_N_RSS_TABLES)
  return -EINVAL;

 port->rss_ctx[i] = rss_ctx;
 *port_ctx = i;

 return 0;
}
