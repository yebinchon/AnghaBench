
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum debug_print_features { ____Placeholder_debug_print_features } debug_print_features ;


 int REGDUMP_HEADER_ENGINE_SHIFT ;
 int REGDUMP_HEADER_FEATURE_SHIFT ;
 int REGDUMP_HEADER_OMIT_ENGINE_SHIFT ;

__attribute__((used)) static u32 qed_calc_regdump_header(enum debug_print_features feature,
       int engine, u32 feature_size, u8 omit_engine)
{



 return feature_size | (feature << REGDUMP_HEADER_FEATURE_SHIFT) |
        (omit_engine << REGDUMP_HEADER_OMIT_ENGINE_SHIFT) |
        (engine << REGDUMP_HEADER_ENGINE_SHIFT);
}
