
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void ath6kl_add_le32(__le32 *var, __le32 val)
{
 *var = cpu_to_le32(le32_to_cpu(*var) + le32_to_cpu(val));
}
