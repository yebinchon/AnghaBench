
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redrat3_dev {int transmitting; int dev; } ;


 int dev_info (int ,char*,int) ;
 int pr_cont (char*) ;

__attribute__((used)) static void redrat3_dump_fw_error(struct redrat3_dev *rr3, int code)
{
 if (!rr3->transmitting && (code != 0x40))
  dev_info(rr3->dev, "fw error code 0x%02x: ", code);

 switch (code) {
 case 0x00:
  pr_cont("No Error\n");
  break;


 case 0x20:
  pr_cont("Initial signal pulse not long enough to measure carrier frequency\n");
  break;
 case 0x21:
  pr_cont("Not enough length values allocated for signal\n");
  break;
 case 0x22:
  pr_cont("Not enough memory allocated for signal data\n");
  break;
 case 0x23:
  pr_cont("Too many signal repeats\n");
  break;
 case 0x28:
  pr_cont("Insufficient memory available for IR signal data memory allocation\n");
  break;
 case 0x29:
  pr_cont("Insufficient memory available for IrDa signal data memory allocation\n");
  break;


 case 0x30:
  pr_cont("Insufficient memory available for bulk transfer structure\n");
  break;





 case 0x40:
  if (!rr3->transmitting)
   pr_cont("Signal capture has been terminated\n");
  break;
 case 0x41:
  pr_cont("Attempt to set/get and unknown signal I/O algorithm parameter\n");
  break;
 case 0x42:
  pr_cont("Signal capture already started\n");
  break;

 default:
  pr_cont("Unknown Error\n");
  break;
 }
}
