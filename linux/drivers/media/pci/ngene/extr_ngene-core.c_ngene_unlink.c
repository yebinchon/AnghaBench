
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int address; int data; } ;
struct TYPE_4__ {int Length; int Opcode; } ;
struct TYPE_5__ {TYPE_3__ MemoryWrite; TYPE_1__ hdr; } ;
struct ngene_command {int in_len; int out_len; TYPE_2__ cmd; } ;
struct ngene {int cmd_mutex; } ;


 int CMD_MEM_WRITE ;
 int NGENE_INT_ENABLE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ngene_command_mutex (struct ngene*,struct ngene_command*) ;
 int ngwritel (int ,int ) ;

__attribute__((used)) static void ngene_unlink(struct ngene *dev)
{
 struct ngene_command com;

 com.cmd.hdr.Opcode = CMD_MEM_WRITE;
 com.cmd.hdr.Length = 3;
 com.cmd.MemoryWrite.address = 0x910c;
 com.cmd.MemoryWrite.data = 0xff;
 com.in_len = 3;
 com.out_len = 1;

 mutex_lock(&dev->cmd_mutex);
 ngwritel(0, NGENE_INT_ENABLE);
 ngene_command_mutex(dev, &com);
 mutex_unlock(&dev->cmd_mutex);
}
