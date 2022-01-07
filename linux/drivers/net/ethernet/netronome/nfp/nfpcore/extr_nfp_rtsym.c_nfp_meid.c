
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int nfp_meid(u8 island_id, u8 menum)
{
 return (island_id & 0x3F) == island_id && menum < 12 ?
  (island_id << 4) | (menum + 4) : -1;
}
