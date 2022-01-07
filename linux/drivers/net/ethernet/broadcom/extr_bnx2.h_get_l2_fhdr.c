
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2_fhdr {int dummy; } ;


 int BNX2_RX_ALIGN ;
 scalar_t__ NET_SKB_PAD ;
 scalar_t__ PTR_ALIGN (int *,int ) ;

__attribute__((used)) static inline struct l2_fhdr *get_l2_fhdr(u8 *data)
{
 return (struct l2_fhdr *)(PTR_ALIGN(data, BNX2_RX_ALIGN) + NET_SKB_PAD);
}
