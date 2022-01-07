
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct l2t_data {int l2t_size; } ;


 unsigned int jhash_2words (int const,int,int ) ;

__attribute__((used)) static inline unsigned int arp_hash(struct l2t_data *d, const u32 *key,
        int ifindex)
{
 unsigned int l2t_size_half = d->l2t_size / 2;

 return jhash_2words(*key, ifindex, 0) % l2t_size_half;
}
