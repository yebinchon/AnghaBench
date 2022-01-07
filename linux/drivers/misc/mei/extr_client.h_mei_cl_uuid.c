
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_le ;
struct mei_cl {int me_cl; } ;


 int const* mei_me_cl_uuid (int ) ;

__attribute__((used)) static inline const uuid_le *mei_cl_uuid(const struct mei_cl *cl)
{
 return mei_me_cl_uuid(cl->me_cl);
}
