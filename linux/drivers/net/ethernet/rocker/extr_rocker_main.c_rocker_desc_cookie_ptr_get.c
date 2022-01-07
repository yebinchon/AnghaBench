
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_desc_info {TYPE_1__* desc; } ;
struct TYPE_2__ {scalar_t__ cookie; } ;



__attribute__((used)) static void *
rocker_desc_cookie_ptr_get(const struct rocker_desc_info *desc_info)
{
 return (void *)(uintptr_t)desc_info->desc->cookie;
}
