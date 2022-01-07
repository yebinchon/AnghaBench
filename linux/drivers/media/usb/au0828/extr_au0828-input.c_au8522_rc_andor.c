
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u16 ;
struct au0828_rc {int dummy; } ;


 int au8522_rc_read (struct au0828_rc*,int ,int,char*,int) ;
 int au8522_rc_write (struct au0828_rc*,int ,char) ;

__attribute__((used)) static int au8522_rc_andor(struct au0828_rc *ir, u16 reg, u8 mask, u8 value)
{
 int rc;
 char buf, oldbuf;

 rc = au8522_rc_read(ir, reg, -1, &buf, 1);
 if (rc < 0)
  return rc;

 oldbuf = buf;
 buf = (buf & ~mask) | (value & mask);


 if (buf == oldbuf)
  return 0;

 return au8522_rc_write(ir, reg, buf);
}
