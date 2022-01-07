
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_lif {int dummy; } ;


 int ionic_lif_rss_config (struct ionic_lif*,int,int *,int *) ;

__attribute__((used)) static int ionic_lif_rss_deinit(struct ionic_lif *lif)
{
 return ionic_lif_rss_config(lif, 0x0, ((void*)0), ((void*)0));
}
