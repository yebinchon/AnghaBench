
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static void set_words(u32 *words, int num_words, __le32 *desc)
{
 int i;

 for (i = 0; i < num_words; i++)
  desc[i] = cpu_to_le32(words[i]);
}
