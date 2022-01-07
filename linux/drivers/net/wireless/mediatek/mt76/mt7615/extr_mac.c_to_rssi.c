
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s8 ;


 int FIELD_GET (int ,int ) ;

__attribute__((used)) static inline s8 to_rssi(u32 field, u32 rxv)
{
 return (FIELD_GET(field, rxv) - 220) / 2;
}
