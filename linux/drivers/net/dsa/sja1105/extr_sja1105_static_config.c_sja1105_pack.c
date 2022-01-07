
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;
 int ERANGE ;
 int PACK ;
 int QUIRK_LSW32_IS_FIRST ;
 int dump_stack () ;
 scalar_t__ likely (int) ;
 int packing (void*,int *,int,int,size_t,int ,int ) ;
 int pr_err (char*,int,int,...) ;

void sja1105_pack(void *buf, const u64 *val, int start, int end, size_t len)
{
 int rc = packing(buf, (u64 *)val, start, end, len,
    PACK, QUIRK_LSW32_IS_FIRST);

 if (likely(!rc))
  return;

 if (rc == -EINVAL) {
  pr_err("Start bit (%d) expected to be larger than end (%d)\n",
         start, end);
 } else if (rc == -ERANGE) {
  if ((start - end + 1) > 64)
   pr_err("Field %d-%d too large for 64 bits!\n",
          start, end);
  else
   pr_err("Cannot store %llx inside bits %d-%d (would truncate)\n",
          *val, start, end);
 }
 dump_stack();
}
