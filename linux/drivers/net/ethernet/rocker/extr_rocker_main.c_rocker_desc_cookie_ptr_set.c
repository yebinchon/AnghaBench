
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_desc_info {TYPE_1__* desc; } ;
struct TYPE_2__ {uintptr_t cookie; } ;



__attribute__((used)) static void rocker_desc_cookie_ptr_set(const struct rocker_desc_info *desc_info,
           void *ptr)
{
 desc_info->desc->cookie = (uintptr_t) ptr;
}
