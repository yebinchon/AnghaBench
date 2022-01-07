
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline void parse_cidxtid(u8 cidxtid, u8 *cid, u8 *tid)
{
 *cid = cidxtid & 0xf;
 *tid = (cidxtid >> 4) & 0xf;
}
