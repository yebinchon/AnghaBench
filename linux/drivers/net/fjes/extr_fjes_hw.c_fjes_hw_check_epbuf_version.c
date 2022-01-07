
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ version; } ;
union ep_buffer_info {TYPE_1__ common; } ;
typedef scalar_t__ u32 ;
struct epbuf_handler {union ep_buffer_info* info; } ;



bool fjes_hw_check_epbuf_version(struct epbuf_handler *epbh, u32 version)
{
 union ep_buffer_info *info = epbh->info;

 return (info->common.version == version);
}
