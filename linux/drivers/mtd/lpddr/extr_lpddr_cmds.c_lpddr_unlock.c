
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int DO_XXLOCK_UNLOCK ;
 int do_xxlock (struct mtd_info*,int ,int ,int ) ;

__attribute__((used)) static int lpddr_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
 return do_xxlock(mtd, ofs, len, DO_XXLOCK_UNLOCK);
}
