
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int uds_compute_ratio(unsigned int input, unsigned int output)
{

 return (input - 1) * 4096 / (output - 1);
}
