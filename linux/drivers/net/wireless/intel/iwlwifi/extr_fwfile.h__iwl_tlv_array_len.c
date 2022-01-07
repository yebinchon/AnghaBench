
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_ucode_tlv {int length; } ;


 scalar_t__ WARN_ON (size_t) ;
 size_t le32_to_cpu (int ) ;

__attribute__((used)) static inline size_t _iwl_tlv_array_len(const struct iwl_ucode_tlv *tlv,
     size_t fixed_size, size_t var_size)
{
 size_t var_len = le32_to_cpu(tlv->length) - fixed_size;

 if (WARN_ON(var_len % var_size))
  return 0;

 return var_len / var_size;
}
