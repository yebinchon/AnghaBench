
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpu {int dummy; } ;


 int JCCMD ;
 int JCCMD_SRST ;
 int jpu_wait_reset (struct jpu*) ;
 int jpu_write (struct jpu*,int ,int ) ;

__attribute__((used)) static int jpu_reset(struct jpu *jpu)
{
 jpu_write(jpu, JCCMD_SRST, JCCMD);
 return jpu_wait_reset(jpu);
}
