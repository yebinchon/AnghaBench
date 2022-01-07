
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_GetCPIAVersion ;
 int CPIA_COMMAND_GetPnPID ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int get_version_information(struct gspca_dev *gspca_dev)
{
 int ret;


 ret = do_command(gspca_dev, CPIA_COMMAND_GetCPIAVersion, 0, 0, 0, 0);
 if (ret)
  return ret;


 return do_command(gspca_dev, CPIA_COMMAND_GetPnPID, 0, 0, 0, 0);
}
