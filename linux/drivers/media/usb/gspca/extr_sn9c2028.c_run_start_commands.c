
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct init_command {int to_read; int instruction; } ;
struct gspca_dev {int dummy; } ;


 int sn9c2028_command (struct gspca_dev*,int ) ;
 int sn9c2028_long_command (struct gspca_dev*,int ) ;
 int sn9c2028_short_command (struct gspca_dev*,int ) ;

__attribute__((used)) static int run_start_commands(struct gspca_dev *gspca_dev,
         struct init_command *cam_commands, int n)
{
 int i, err_code = -1;

 for (i = 0; i < n; i++) {
  switch (cam_commands[i].to_read) {
  case 4:
   err_code = sn9c2028_long_command(gspca_dev,
     cam_commands[i].instruction);
   break;
  case 1:
   err_code = sn9c2028_short_command(gspca_dev,
     cam_commands[i].instruction);
   break;
  case 0:
   err_code = sn9c2028_command(gspca_dev,
     cam_commands[i].instruction);
   break;
  }
  if (err_code < 0)
   return err_code;
 }
 return 0;
}
