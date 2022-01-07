
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc_bulk {int bulk_len; int bitmask; } ;


 int bitmap_weight (int ,int ) ;

__attribute__((used)) static int mlx5_fc_bulk_get_free_fcs_amount(struct mlx5_fc_bulk *bulk)
{
 return bitmap_weight(bulk->bitmask, bulk->bulk_len);
}
