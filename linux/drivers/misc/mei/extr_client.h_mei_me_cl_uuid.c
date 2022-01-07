
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_le ;
struct TYPE_2__ {int const protocol_name; } ;
struct mei_me_client {TYPE_1__ props; } ;



__attribute__((used)) static inline const uuid_le *mei_me_cl_uuid(const struct mei_me_client *me_cl)
{
 return &me_cl->props.protocol_name;
}
