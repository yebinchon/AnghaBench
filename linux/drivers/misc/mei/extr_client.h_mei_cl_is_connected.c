
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl {scalar_t__ state; } ;


 scalar_t__ MEI_FILE_CONNECTED ;

__attribute__((used)) static inline bool mei_cl_is_connected(struct mei_cl *cl)
{
 return cl->state == MEI_FILE_CONNECTED;
}
