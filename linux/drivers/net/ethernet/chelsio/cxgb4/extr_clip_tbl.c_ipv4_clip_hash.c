
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clip_tbl {int clipt_size; } ;


 unsigned int jhash_1word (int const,int ) ;

__attribute__((used)) static inline unsigned int ipv4_clip_hash(struct clip_tbl *c, const u32 *key)
{
 unsigned int clipt_size_half = c->clipt_size / 2;

 return jhash_1word(*key, 0) % clipt_size_half;
}
