
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPSW_FIFO_SHAPERS_NUM ;

__attribute__((used)) static int cpsw_tc_to_fifo(int tc, int num_tc)
{
 if (tc == num_tc - 1)
  return 0;

 return CPSW_FIFO_SHAPERS_NUM - tc;
}
