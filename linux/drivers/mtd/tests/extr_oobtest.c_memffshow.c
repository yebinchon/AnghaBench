
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ loff_t ;


 scalar_t__ hweight8 (int) ;
 int pr_info (char*,unsigned long,unsigned long,unsigned char const,int) ;

__attribute__((used)) static size_t memffshow(loff_t addr, loff_t offset, const void *cs,
   size_t count)
{
 const unsigned char *su1;
 int res;
 size_t i = 0;
 size_t bitflips = 0;

 for (su1 = cs; 0 < count; ++su1, count--, i++) {
  res = *su1 ^ 0xff;
  if (res) {
   pr_info("error @addr[0x%lx:0x%lx] 0x%x -> 0xff diff 0x%x\n",
    (unsigned long)addr, (unsigned long)offset + i,
    *su1, res);
   bitflips += hweight8(res);
  }
 }

 return bitflips;
}
