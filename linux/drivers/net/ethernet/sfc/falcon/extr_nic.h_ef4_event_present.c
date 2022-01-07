
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dword; } ;
typedef TYPE_1__ ef4_qword_t ;


 int EF4_DWORD_IS_ALL_ONES (int ) ;

__attribute__((used)) static inline int ef4_event_present(ef4_qword_t *event)
{
 return !(EF4_DWORD_IS_ALL_ONES(event->dword[0]) |
    EF4_DWORD_IS_ALL_ONES(event->dword[1]));
}
