
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx5_ptys_rate { ____Placeholder_mlx5_ptys_rate } mlx5_ptys_rate ;
__attribute__((used)) static inline int mlx5_ptys_rate_enum_to_int(enum mlx5_ptys_rate rate)
{
 switch (rate) {
 case 128: return 2500;
 case 134: return 5000;
 case 129:
 case 131: return 10000;
 case 132: return 14000;
 case 133: return 25000;
 case 130: return 50000;
 default: return -1;
 }
}
