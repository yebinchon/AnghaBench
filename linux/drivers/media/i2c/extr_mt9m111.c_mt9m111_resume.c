
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {int dummy; } ;


 int mt9m111_enable (struct mt9m111*) ;
 int mt9m111_reset (struct mt9m111*) ;
 int mt9m111_restore_state (struct mt9m111*) ;

__attribute__((used)) static int mt9m111_resume(struct mt9m111 *mt9m111)
{
 int ret = mt9m111_enable(mt9m111);
 if (!ret)
  ret = mt9m111_reset(mt9m111);
 if (!ret)
  mt9m111_restore_state(mt9m111);

 return ret;
}
