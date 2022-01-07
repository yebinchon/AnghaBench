
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typhoon {TYPE_1__* indexes; } ;
struct TYPE_2__ {int respCleared; int respReady; } ;


 int RESPONSE_ENTRIES ;
 int le32_to_cpu (int ) ;
 int typhoon_num_free (int,int,int ) ;

__attribute__((used)) static inline int
typhoon_num_free_resp(struct typhoon *tp)
{
 int respReady = le32_to_cpu(tp->indexes->respReady);
 int respCleared = le32_to_cpu(tp->indexes->respCleared);

 return typhoon_num_free(respReady, respCleared, RESPONSE_ENTRIES);
}
