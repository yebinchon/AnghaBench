
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_caps {size_t num_pl; int * pl; } ;
struct hfi_profile_level {int dummy; } ;


 int memcpy (int *,struct hfi_profile_level const*,unsigned int) ;

__attribute__((used)) static void fill_profile_level(struct venus_caps *cap, const void *data,
          unsigned int num)
{
 const struct hfi_profile_level *pl = data;

 memcpy(&cap->pl[cap->num_pl], pl, num * sizeof(*pl));
 cap->num_pl += num;
}
