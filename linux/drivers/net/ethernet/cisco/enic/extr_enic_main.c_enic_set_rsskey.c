
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int rss_key; } ;


 int ENIC_RSS_LEN ;
 int __enic_set_rsskey (struct enic*) ;
 int netdev_rss_key_fill (int ,int ) ;

__attribute__((used)) static int enic_set_rsskey(struct enic *enic)
{
 netdev_rss_key_fill(enic->rss_key, ENIC_RSS_LEN);

 return __enic_set_rsskey(enic);
}
