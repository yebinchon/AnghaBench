
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 rs_is_valid_ant(u8 valid_antenna, u8 ant_type)
{
 return (ant_type & valid_antenna) == ant_type;
}
