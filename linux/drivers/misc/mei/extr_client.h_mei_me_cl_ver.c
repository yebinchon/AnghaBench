
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int protocol_version; } ;
struct mei_me_client {TYPE_1__ props; } ;



__attribute__((used)) static inline u8 mei_me_cl_ver(const struct mei_me_client *me_cl)
{
 return me_cl->props.protocol_version;
}
