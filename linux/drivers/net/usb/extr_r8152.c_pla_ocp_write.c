
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8152 {int dummy; } ;


 int MCU_TYPE_PLA ;
 int generic_ocp_write (struct r8152*,int ,int ,int ,void*,int ) ;

__attribute__((used)) static inline
int pla_ocp_write(struct r8152 *tp, u16 index, u16 byteen, u16 size, void *data)
{
 return generic_ocp_write(tp, index, byteen, size, data, MCU_TYPE_PLA);
}
