
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_desc {int * data; } ;


 int EIO ;
 int HCLGE_VF_NUM_IN_FIRST_DESC ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static int hclge_update_desc_vfid(struct hclge_desc *desc, int vfid, bool clr)
{


 unsigned int word_num;
 unsigned int bit_num;

 if (vfid > 255 || vfid < 0)
  return -EIO;

 if (vfid >= 0 && vfid < 192) {
  word_num = vfid / 32;
  bit_num = vfid % 32;
  if (clr)
   desc[1].data[word_num] &= cpu_to_le32(~(1 << bit_num));
  else
   desc[1].data[word_num] |= cpu_to_le32(1 << bit_num);
 } else {
  word_num = (vfid - 192) / 32;
  bit_num = vfid % 32;
  if (clr)
   desc[2].data[word_num] &= cpu_to_le32(~(1 << bit_num));
  else
   desc[2].data[word_num] |= cpu_to_le32(1 << bit_num);
 }

 return 0;
}
