
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ID1_CHIPID_M ;
 int ID1_CHIPID_S ;

__attribute__((used)) static inline u8 get_chip_id(u8 val)
{
 return (val >> ID1_CHIPID_S) & ID1_CHIPID_M;
}
