
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_misc3 {scalar_t__ icmpv6_header_data; scalar_t__ icmpv6_code; scalar_t__ icmpv6_type; } ;



__attribute__((used)) static bool dr_mask_is_flex_parser_icmpv6_set(struct mlx5dr_match_misc3 *misc3)
{
 return (misc3->icmpv6_type || misc3->icmpv6_code ||
  misc3->icmpv6_header_data);
}
