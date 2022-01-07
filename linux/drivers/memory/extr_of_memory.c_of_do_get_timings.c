
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpddr2_timings {int tDQSCK_max_derated; int tRAS_max_ns; int tZQinit; int tZQCL; int tZQCS; int tFAW; int tDQSCK_max; int tCKESR; int tRTP; int tXP; int tWTR; int tRRD; int tRAS_min; int tWR; int tRCD; int tRPab; int min_freq; int max_freq; } ;
struct device_node {int dummy; } ;


 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int of_do_get_timings(struct device_node *np,
  struct lpddr2_timings *tim)
{
 int ret;

 ret = of_property_read_u32(np, "max-freq", &tim->max_freq);
 ret |= of_property_read_u32(np, "min-freq", &tim->min_freq);
 ret |= of_property_read_u32(np, "tRPab", &tim->tRPab);
 ret |= of_property_read_u32(np, "tRCD", &tim->tRCD);
 ret |= of_property_read_u32(np, "tWR", &tim->tWR);
 ret |= of_property_read_u32(np, "tRAS-min", &tim->tRAS_min);
 ret |= of_property_read_u32(np, "tRRD", &tim->tRRD);
 ret |= of_property_read_u32(np, "tWTR", &tim->tWTR);
 ret |= of_property_read_u32(np, "tXP", &tim->tXP);
 ret |= of_property_read_u32(np, "tRTP", &tim->tRTP);
 ret |= of_property_read_u32(np, "tCKESR", &tim->tCKESR);
 ret |= of_property_read_u32(np, "tDQSCK-max", &tim->tDQSCK_max);
 ret |= of_property_read_u32(np, "tFAW", &tim->tFAW);
 ret |= of_property_read_u32(np, "tZQCS", &tim->tZQCS);
 ret |= of_property_read_u32(np, "tZQCL", &tim->tZQCL);
 ret |= of_property_read_u32(np, "tZQinit", &tim->tZQinit);
 ret |= of_property_read_u32(np, "tRAS-max-ns", &tim->tRAS_max_ns);
 ret |= of_property_read_u32(np, "tDQSCK-max-derated",
  &tim->tDQSCK_max_derated);

 return ret;
}
