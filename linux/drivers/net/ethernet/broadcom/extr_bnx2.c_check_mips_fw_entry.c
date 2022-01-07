
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct bnx2_mips_fw_file_entry {int rodata; int data; int text; } ;


 int EINVAL ;
 scalar_t__ check_fw_section (struct firmware const*,int *,int,int) ;

__attribute__((used)) static int
check_mips_fw_entry(const struct firmware *fw,
      const struct bnx2_mips_fw_file_entry *entry)
{
 if (check_fw_section(fw, &entry->text, 4, 1) ||
     check_fw_section(fw, &entry->data, 4, 0) ||
     check_fw_section(fw, &entry->rodata, 4, 0))
  return -EINVAL;
 return 0;
}
