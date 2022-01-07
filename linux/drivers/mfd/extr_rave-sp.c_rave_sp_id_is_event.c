
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RAVE_SP_EVNT_BASE ;

__attribute__((used)) static bool rave_sp_id_is_event(u8 code)
{
 return (code & 0xF0) == RAVE_SP_EVNT_BASE;
}
