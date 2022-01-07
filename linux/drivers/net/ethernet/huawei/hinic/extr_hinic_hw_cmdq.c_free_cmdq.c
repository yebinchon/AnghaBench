
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_cmdq {int done; int errcode; } ;


 int vfree (int ) ;

__attribute__((used)) static void free_cmdq(struct hinic_cmdq *cmdq)
{
 vfree(cmdq->errcode);
 vfree(cmdq->done);
}
