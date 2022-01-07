
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct clip_tbl {int dummy; } ;


 unsigned int ipv4_clip_hash (struct clip_tbl*,int const*) ;
 unsigned int ipv6_clip_hash (struct clip_tbl*,int const*) ;

__attribute__((used)) static unsigned int clip_addr_hash(struct clip_tbl *ctbl, const u32 *addr,
       u8 v6)
{
 return v6 ? ipv6_clip_hash(ctbl, addr) :
   ipv4_clip_hash(ctbl, addr);
}
