
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u32 ;
struct firmware {scalar_t__ data; } ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;
 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static u32 slic_read_dword_from_firmware(const struct firmware *fw, int *offset)
{
 int idx = *offset;
 __le32 val;

 memcpy(&val, fw->data + *offset, sizeof(val));
 idx += 4;
 *offset = idx;

 return le32_to_cpu(val);
}
