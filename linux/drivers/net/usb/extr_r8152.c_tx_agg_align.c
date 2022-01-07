
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALIGN (uintptr_t,int ) ;
 int TX_ALIGN ;

__attribute__((used)) static inline void *tx_agg_align(void *data)
{
 return (void *)ALIGN((uintptr_t)data, TX_ALIGN);
}
