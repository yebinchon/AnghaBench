
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_rss_table {int dummy; } ;
struct mvpp2 {struct mvpp2_rss_table** rss_tables; } ;


 int MVPP22_N_RSS_TABLES ;

__attribute__((used)) static struct mvpp2_rss_table *mvpp22_rss_table_get(struct mvpp2 *priv,
          int rss_ctx)
{
 if (rss_ctx < 0 || rss_ctx >= MVPP22_N_RSS_TABLES)
  return ((void*)0);

 return priv->rss_tables[rss_ctx];
}
