
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cal_dev {int dummy; } ;


 int CAL_HL_HWINFO ;
 int CAL_HL_REVISION ;
 int cal_dbg (int,struct cal_dev*,char*,int ) ;
 int reg_read (struct cal_dev*,int ) ;

__attribute__((used)) static void cal_get_hwinfo(struct cal_dev *dev)
{
 u32 revision = 0;
 u32 hwinfo = 0;

 revision = reg_read(dev, CAL_HL_REVISION);
 cal_dbg(3, dev, "CAL_HL_REVISION = 0x%08x (expecting 0x40000200)\n",
  revision);

 hwinfo = reg_read(dev, CAL_HL_HWINFO);
 cal_dbg(3, dev, "CAL_HL_HWINFO = 0x%08x (expecting 0xA3C90469)\n",
  hwinfo);
}
