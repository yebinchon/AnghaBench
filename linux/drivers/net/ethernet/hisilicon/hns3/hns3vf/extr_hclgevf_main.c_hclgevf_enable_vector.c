
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_misc_vector {int addr; } ;


 int writel (int,int ) ;

__attribute__((used)) static void hclgevf_enable_vector(struct hclgevf_misc_vector *vector, bool en)
{
 writel(en ? 1 : 0, vector->addr);
}
