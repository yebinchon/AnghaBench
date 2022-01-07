
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_si {int num_rss; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int enetc_set_rss_table (struct enetc_si*,int*,int) ;
 int kfree (int*) ;
 int* kmalloc_array (int,int,int ) ;

__attribute__((used)) static int enetc_setup_default_rss_table(struct enetc_si *si, int num_groups)
{
 int *rss_table;
 int i;

 rss_table = kmalloc_array(si->num_rss, sizeof(*rss_table), GFP_KERNEL);
 if (!rss_table)
  return -ENOMEM;


 for (i = 0; i < si->num_rss; i++)
  rss_table[i] = i % num_groups;

 enetc_set_rss_table(si, rss_table, si->num_rss);

 kfree(rss_table);

 return 0;
}
