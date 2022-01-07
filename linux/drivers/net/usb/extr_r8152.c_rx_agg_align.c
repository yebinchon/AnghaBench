
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALIGN (uintptr_t,int ) ;
 int RX_ALIGN ;

__attribute__((used)) static inline void *rx_agg_align(void *data)
{
 return (void *)ALIGN((uintptr_t)data, RX_ALIGN);
}
