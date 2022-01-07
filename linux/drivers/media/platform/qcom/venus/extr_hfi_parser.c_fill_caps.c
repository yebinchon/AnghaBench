
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_caps {size_t num_caps; int * caps; } ;
struct hfi_capability {int dummy; } ;


 int memcpy (int *,struct hfi_capability const*,unsigned int) ;

__attribute__((used)) static void
fill_caps(struct venus_caps *cap, const void *data, unsigned int num)
{
 const struct hfi_capability *caps = data;

 memcpy(&cap->caps[cap->num_caps], caps, num * sizeof(*caps));
 cap->num_caps += num;
}
