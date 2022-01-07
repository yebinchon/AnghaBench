
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hermes {int dummy; } ;


 int HERMES_AUXDATA ;
 int hermes_aux_setaddr (struct hermes*,int ) ;
 int hermes_write_bytes (struct hermes*,int ,char const*,int ) ;

__attribute__((used)) static int hermes_program_bytes(struct hermes *hw, const char *data,
    u32 addr, u32 len)
{



 hermes_aux_setaddr(hw, addr);
 hermes_write_bytes(hw, HERMES_AUXDATA, data, len);
 return 0;
}
