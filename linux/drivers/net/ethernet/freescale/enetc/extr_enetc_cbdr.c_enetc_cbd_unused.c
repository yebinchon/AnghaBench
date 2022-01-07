
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_cbdr {int next_to_clean; int next_to_use; int bd_count; } ;



__attribute__((used)) static int enetc_cbd_unused(struct enetc_cbdr *r)
{
 return (r->next_to_clean - r->next_to_use - 1 + r->bd_count) %
  r->bd_count;
}
