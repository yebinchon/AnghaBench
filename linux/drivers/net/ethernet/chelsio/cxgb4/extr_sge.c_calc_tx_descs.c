
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int calc_tx_flits (struct sk_buff const*,unsigned int) ;
 unsigned int flits_to_desc (int ) ;

__attribute__((used)) static inline unsigned int calc_tx_descs(const struct sk_buff *skb,
      unsigned int chip_ver)
{
 return flits_to_desc(calc_tx_flits(skb, chip_ver));
}
