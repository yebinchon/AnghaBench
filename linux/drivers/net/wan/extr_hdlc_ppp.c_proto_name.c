
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;






__attribute__((used)) static inline const char* proto_name(u16 pid)
{
 switch (pid) {
 case 128:
  return "LCP";
 case 130:
  return "IPCP";
 case 129:
  return "IPV6CP";
 default:
  return ((void*)0);
 }
}
