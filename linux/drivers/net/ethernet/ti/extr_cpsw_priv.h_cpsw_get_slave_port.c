
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline int cpsw_get_slave_port(u32 slave_num)
{
 return slave_num + 1;
}
