
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct firmware {int size; } ;
struct bnx2_fw_file_section {int len; int offset; } ;


 int EINVAL ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static int
check_fw_section(const struct firmware *fw,
   const struct bnx2_fw_file_section *section,
   u32 alignment, bool non_empty)
{
 u32 offset = be32_to_cpu(section->offset);
 u32 len = be32_to_cpu(section->len);

 if ((offset == 0 && len != 0) || offset >= fw->size || offset & 3)
  return -EINVAL;
 if ((non_empty && len == 0) || len > fw->size - offset ||
     len & (alignment - 1))
  return -EINVAL;
 return 0;
}
