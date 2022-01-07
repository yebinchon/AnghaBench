
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_bmap {scalar_t__ max_count; int bitmap; } ;


 scalar_t__ find_first_bit (int ,scalar_t__) ;

__attribute__((used)) static bool qed_bmap_is_empty(struct qed_bmap *bmap)
{
 return bmap->max_count == find_first_bit(bmap->bitmap, bmap->max_count);
}
