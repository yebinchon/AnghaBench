
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dword; } ;
typedef TYPE_1__ efx_qword_t ;


 int EFX_DWORD_IS_ALL_ONES (int ) ;

__attribute__((used)) static inline int efx_event_present(efx_qword_t *event)
{
 return !(EFX_DWORD_IS_ALL_ONES(event->dword[0]) |
    EFX_DWORD_IS_ALL_ONES(event->dword[1]));
}
