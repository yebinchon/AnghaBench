
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6060_priv {int dummy; } ;


 int GLOBAL_ATU_CONTROL ;
 int GLOBAL_ATU_CONTROL_LEARNDIS ;
 int GLOBAL_CONTROL ;
 int GLOBAL_CONTROL_MAX_FRAME_1536 ;
 int REG_GLOBAL ;
 int reg_write (struct mv88e6060_priv*,int ,int ,int ) ;

__attribute__((used)) static int mv88e6060_setup_global(struct mv88e6060_priv *priv)
{
 int ret;





 ret = reg_write(priv, REG_GLOBAL, GLOBAL_CONTROL,
   GLOBAL_CONTROL_MAX_FRAME_1536);
 if (ret)
  return ret;



 return reg_write(priv, REG_GLOBAL, GLOBAL_ATU_CONTROL,
    GLOBAL_ATU_CONTROL_LEARNDIS);
}
