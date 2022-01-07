
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int authType; } ;
struct airo_info {int last_auth; TYPE_1__ config; } ;


 int AUTH_ENCRYPT ;
 int AUTH_OPEN ;

__attribute__((used)) static inline void set_auth_type(struct airo_info *local, int auth_type)
{
 local->config.authType = auth_type;



 if (auth_type == AUTH_OPEN || auth_type == AUTH_ENCRYPT)
  local->last_auth = auth_type;
}
