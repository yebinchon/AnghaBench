
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tw5864_input {int nr; struct tw5864_dev* root; } ;
struct tw5864_dev {TYPE_1__* pci; } ;
typedef enum tw5864_vid_std { ____Placeholder_tw5864_vid_std } tw5864_vid_std ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int TW5864_INDIR_VIN_E (int ) ;
 int dev_dbg (int *,char*) ;
 int tw_indir_readb (int ) ;

__attribute__((used)) static int tw5864_input_std_get(struct tw5864_input *input,
    enum tw5864_vid_std *std)
{
 struct tw5864_dev *dev = input->root;
 u8 std_reg = tw_indir_readb(TW5864_INDIR_VIN_E(input->nr));

 *std = (std_reg & 0x70) >> 4;

 if (std_reg & 0x80) {
  dev_dbg(&dev->pci->dev,
   "Video format detection is in progress, please wait\n");
  return -EAGAIN;
 }

 return 0;
}
