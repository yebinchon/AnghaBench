
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int spa_max_procs(int spa_size)
{
 return ((spa_size / 8) - 96) / 17;
}
