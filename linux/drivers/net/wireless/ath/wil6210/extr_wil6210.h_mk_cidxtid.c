
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 mk_cidxtid(u8 cid, u8 tid)
{
 return ((tid & 0xf) << 4) | (cid & 0xf);
}
