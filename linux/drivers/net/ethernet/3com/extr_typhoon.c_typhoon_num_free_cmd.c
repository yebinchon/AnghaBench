
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lastWrite; } ;
struct typhoon {TYPE_2__* indexes; TYPE_1__ cmdRing; } ;
struct TYPE_4__ {int cmdCleared; } ;


 int COMMAND_ENTRIES ;
 int le32_to_cpu (int ) ;
 int typhoon_num_free (int,int,int ) ;

__attribute__((used)) static inline int
typhoon_num_free_cmd(struct typhoon *tp)
{
 int lastWrite = tp->cmdRing.lastWrite;
 int cmdCleared = le32_to_cpu(tp->indexes->cmdCleared);

 return typhoon_num_free(lastWrite, cmdCleared, COMMAND_ENTRIES);
}
