
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 int div_s64 (int ,int) ;

__attribute__((used)) static s64 ns_to_sja1105_delta(s64 ns)
{
 return div_s64(ns, 200);
}
