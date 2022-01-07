
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iavf_stats {int dummy; } ;


 int iavf_add_one_ethtool_stat (int ,void*,struct iavf_stats const*) ;

__attribute__((used)) static void
__iavf_add_ethtool_stats(u64 **data, void *pointer,
    const struct iavf_stats stats[],
    const unsigned int size)
{
 unsigned int i;

 for (i = 0; i < size; i++)
  iavf_add_one_ethtool_stat((*data)++, pointer, &stats[i]);
}
