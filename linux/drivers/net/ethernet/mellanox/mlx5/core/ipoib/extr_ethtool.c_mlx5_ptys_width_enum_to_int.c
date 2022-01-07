
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx5_ptys_width { ____Placeholder_mlx5_ptys_width } mlx5_ptys_width ;
__attribute__((used)) static inline int mlx5_ptys_width_enum_to_int(enum mlx5_ptys_width width)
{
 switch (width) {
 case 131: return 1;
 case 130: return 2;
 case 129: return 4;
 case 128: return 8;
 case 132: return 12;
 default: return -1;
 }
}
