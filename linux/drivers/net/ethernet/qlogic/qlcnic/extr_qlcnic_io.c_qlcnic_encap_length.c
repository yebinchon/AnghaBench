
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int QLCNIC_ENCAP_LENGTH_MASK ;

__attribute__((used)) static inline u8 qlcnic_encap_length(u64 sts_data)
{
 return sts_data & QLCNIC_ENCAP_LENGTH_MASK;
}
