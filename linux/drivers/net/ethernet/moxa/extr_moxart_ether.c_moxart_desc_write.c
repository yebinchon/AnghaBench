
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void moxart_desc_write(u32 data, u32 *desc)
{
 *desc = cpu_to_le32(data);
}
