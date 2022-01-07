
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpddr2_timings {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;



__attribute__((used)) static inline const struct lpddr2_timings
 *of_get_ddr_timings(struct device_node *np_ddr, struct device *dev,
 u32 device_type, u32 *nr_frequencies)
{
 return ((void*)0);
}
