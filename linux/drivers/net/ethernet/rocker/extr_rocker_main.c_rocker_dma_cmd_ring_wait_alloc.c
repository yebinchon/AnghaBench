
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_wait {int dummy; } ;
struct rocker_desc_info {int dummy; } ;


 int ENOMEM ;
 int rocker_desc_cookie_ptr_set (struct rocker_desc_info*,struct rocker_wait*) ;
 struct rocker_wait* rocker_wait_create () ;

__attribute__((used)) static int rocker_dma_cmd_ring_wait_alloc(struct rocker_desc_info *desc_info)
{
 struct rocker_wait *wait;

 wait = rocker_wait_create();
 if (!wait)
  return -ENOMEM;
 rocker_desc_cookie_ptr_set(desc_info, wait);
 return 0;
}
