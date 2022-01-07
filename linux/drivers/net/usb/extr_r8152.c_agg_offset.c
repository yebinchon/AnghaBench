
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_agg {int buffer; } ;



__attribute__((used)) static inline int agg_offset(struct rx_agg *agg, void *addr)
{
 return (int)(addr - agg->buffer);
}
