
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_client {int list; } ;


 int list_empty_careful (int *) ;

__attribute__((used)) static inline bool mei_me_cl_is_active(const struct mei_me_client *me_cl)
{
 return !list_empty_careful(&me_cl->list);
}
