
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SXGBE_DEFAULT_LPI_TIMER ;
 scalar_t__ eee_timer ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sxgbe_verify_args(void)
{
 if (unlikely(eee_timer < 0))
  eee_timer = SXGBE_DEFAULT_LPI_TIMER;
}
