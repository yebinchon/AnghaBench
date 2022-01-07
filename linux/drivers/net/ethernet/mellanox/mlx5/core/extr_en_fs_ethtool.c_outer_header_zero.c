
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 char* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_FLD_SZ_BYTES (int ,int ) ;
 int fte_match_param ;
 int memcmp (char*,char*,int) ;
 int outer_headers ;

__attribute__((used)) static bool outer_header_zero(u32 *match_criteria)
{
 int size = MLX5_FLD_SZ_BYTES(fte_match_param, outer_headers);
 char *outer_headers_c = MLX5_ADDR_OF(fte_match_param, match_criteria,
          outer_headers);

 return outer_headers_c[0] == 0 && !memcmp(outer_headers_c,
        outer_headers_c + 1,
        size - 1);
}
