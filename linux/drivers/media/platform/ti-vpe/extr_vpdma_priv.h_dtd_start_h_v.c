
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DTD_H_START_SHFT ;

__attribute__((used)) static inline u32 dtd_start_h_v(int h_start, int v_start)
{
 return (h_start << DTD_H_START_SHFT) | v_start;
}
