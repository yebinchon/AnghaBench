
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int NP_AT ;
 int NP_IP ;
 int NP_IPV6 ;
 int NP_IPX ;
 int NP_MPLS_MC ;
 int NP_MPLS_UC ;







__attribute__((used)) static inline int proto_to_npindex(int proto)
{
 switch (proto) {
 case 132:
  return NP_IP;
 case 131:
  return NP_IPV6;
 case 130:
  return NP_IPX;
 case 133:
  return NP_AT;
 case 128:
  return NP_MPLS_UC;
 case 129:
  return NP_MPLS_MC;
 }
 return -EINVAL;
}
