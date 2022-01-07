
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct code_entry {int dummy; } ;
struct bnx2x {int dummy; } ;
typedef int entry ;


 int bnx2x_nvram_read32 (struct bnx2x*,int ,int *,int) ;
 int bnx2x_test_nvram_dir (struct bnx2x*,struct code_entry*,int *) ;

__attribute__((used)) static int bnx2x_test_dir_entry(struct bnx2x *bp, u32 addr, u8 *buff)
{
 int rc;
 struct code_entry entry;

 rc = bnx2x_nvram_read32(bp, addr, (u32 *)&entry, sizeof(entry));
 if (rc)
  return rc;

 return bnx2x_test_nvram_dir(bp, &entry, buff);
}
