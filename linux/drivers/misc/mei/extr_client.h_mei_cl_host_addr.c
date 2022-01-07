
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mei_cl {int host_client_id; } ;


 scalar_t__ mei_cl_is_fixed_address (struct mei_cl const*) ;

__attribute__((used)) static inline u8 mei_cl_host_addr(const struct mei_cl *cl)
{
 return mei_cl_is_fixed_address(cl) ? 0 : cl->host_client_id;
}
