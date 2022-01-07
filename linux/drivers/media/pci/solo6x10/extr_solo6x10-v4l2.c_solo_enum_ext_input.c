
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int index; int name; } ;
struct solo_dev {int nr_chans; int nr_ext; } ;


 int EINVAL ;
 int snprintf (int ,int,char*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int solo_enum_ext_input(struct solo_dev *solo_dev,
          struct v4l2_input *input)
{
 int ext = input->index - solo_dev->nr_chans;
 unsigned int nup, first;

 if (ext >= solo_dev->nr_ext)
  return -EINVAL;

 nup = (ext == 4) ? 16 : 4;
 first = (ext & 3) << 2;
 snprintf(input->name, sizeof(input->name),
   "Multi %d-up (cameras %d-%d)",
   nup, first + 1, first + nup);







 return 0;
}
