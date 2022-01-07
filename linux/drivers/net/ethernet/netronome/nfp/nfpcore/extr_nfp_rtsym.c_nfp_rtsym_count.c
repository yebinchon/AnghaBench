
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_rtsym_table {int num; } ;


 int EINVAL ;

int nfp_rtsym_count(struct nfp_rtsym_table *rtbl)
{
 if (!rtbl)
  return -EINVAL;
 return rtbl->num;
}
