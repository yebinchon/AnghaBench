
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_desc {scalar_t__* data; } ;


 int HCLGE_DESC_NUMBER ;
 int HCLGE_FUNC_NUMBER_PER_DESC ;

__attribute__((used)) static bool hclge_is_all_function_id_zero(struct hclge_desc *desc)
{


 int i, j;

 for (i = 1; i < 3; i++)
  for (j = 0; j < 6; j++)
   if (desc[i].data[j])
    return 0;

 return 1;
}
