
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fract {int numerator; int denominator; } ;
struct tw5864_input {int std; struct tw5864_dev* root; } ;
struct tw5864_dev {TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;



 int dev_warn (int *,char*,int) ;

__attribute__((used)) static int tw5864_frameinterval_get(struct tw5864_input *input,
        struct v4l2_fract *frameinterval)
{
 struct tw5864_dev *dev = input->root;

 switch (input->std) {
 case 130:
  frameinterval->numerator = 1001;
  frameinterval->denominator = 30000;
  break;
 case 129:
 case 128:
  frameinterval->numerator = 1;
  frameinterval->denominator = 25;
  break;
 default:
  dev_warn(&dev->pci->dev, "tw5864_frameinterval_get requested for unknown std %d\n",
    input->std);
  return -EINVAL;
 }

 return 0;
}
