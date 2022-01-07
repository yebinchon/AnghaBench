
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct venus_caps {int cap_bufs_mode_dynamic; } ;


 scalar_t__ const HFI_BUFFER_MODE_DYNAMIC ;

__attribute__((used)) static void
fill_buf_mode(struct venus_caps *cap, const void *data, unsigned int num)
{
 const u32 *type = data;

 if (*type == HFI_BUFFER_MODE_DYNAMIC)
  cap->cap_bufs_mode_dynamic = 1;
}
