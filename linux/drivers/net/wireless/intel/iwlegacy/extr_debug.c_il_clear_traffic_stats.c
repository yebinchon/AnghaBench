
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traffic_stats {int dummy; } ;
struct il_priv {int rx_stats; int tx_stats; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void
il_clear_traffic_stats(struct il_priv *il)
{
 memset(&il->tx_stats, 0, sizeof(struct traffic_stats));
 memset(&il->rx_stats, 0, sizeof(struct traffic_stats));
}
