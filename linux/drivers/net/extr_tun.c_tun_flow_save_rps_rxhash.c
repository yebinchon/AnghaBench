
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tun_flow_entry {scalar_t__ rps_rxhash; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void tun_flow_save_rps_rxhash(struct tun_flow_entry *e, u32 hash)
{
 if (unlikely(e->rps_rxhash != hash))
  e->rps_rxhash = hash;
}
