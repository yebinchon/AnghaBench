
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static void get_words(dma_addr_t *words, int num_words, __le32 *desc)
{
 int i;

 for (i = 0; i < num_words; i++)
  words[i] = le32_to_cpu(desc[i]);
}
