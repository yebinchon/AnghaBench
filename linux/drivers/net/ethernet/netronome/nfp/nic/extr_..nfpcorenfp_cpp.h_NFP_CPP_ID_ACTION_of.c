
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u8 NFP_CPP_ID_ACTION_of(u32 id)
{
 return (id >> 8) & 0xff;
}
