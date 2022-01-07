
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vop_header ;
typedef int u32 ;


 int __le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 vop_mpeg_size(const vop_header *vh)
{
 return __le32_to_cpu((*vh)[0]) & 0xFFFFF;
}
