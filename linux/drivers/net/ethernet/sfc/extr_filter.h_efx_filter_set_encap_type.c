
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_filter_spec {int encap_type; int match_flags; } ;
typedef enum efx_encap_type { ____Placeholder_efx_encap_type } efx_encap_type ;


 int EFX_FILTER_MATCH_ENCAP_TYPE ;

__attribute__((used)) static inline void efx_filter_set_encap_type(struct efx_filter_spec *spec,
          enum efx_encap_type encap_type)
{
 spec->match_flags |= EFX_FILTER_MATCH_ENCAP_TYPE;
 spec->encap_type = encap_type;
}
