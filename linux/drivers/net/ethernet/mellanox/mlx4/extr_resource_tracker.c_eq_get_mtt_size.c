
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_eq_context {int log_eq_size; int log_page_size; } ;



__attribute__((used)) static int eq_get_mtt_size(struct mlx4_eq_context *eqc)
{
 int log_eq_size = eqc->log_eq_size & 0x1f;
 int page_shift = (eqc->log_page_size & 0x3f) + 12;

 if (log_eq_size + 5 < page_shift)
  return 1;

 return 1 << (log_eq_size + 5 - page_shift);
}
