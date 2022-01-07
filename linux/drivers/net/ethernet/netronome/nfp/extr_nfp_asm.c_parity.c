
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int hweight64 (int ) ;

__attribute__((used)) static bool parity(u64 value)
{
 return hweight64(value) & 1;
}
