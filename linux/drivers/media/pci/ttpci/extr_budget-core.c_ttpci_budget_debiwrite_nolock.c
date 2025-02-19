
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7146_dev {int dummy; } ;
struct budget {struct saa7146_dev* dev; } ;


 int DEBI_AD ;
 int DEBI_COMMAND ;
 int DEBI_CONFIG ;
 int DEBI_PAGE ;
 int MC2 ;
 int saa7146_wait_for_debi_done (struct saa7146_dev*,int) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;

__attribute__((used)) static int ttpci_budget_debiwrite_nolock(struct budget *budget, u32 config,
  int addr, int count, u32 value, int nobusyloop)
{
 struct saa7146_dev *saa = budget->dev;
 int result;

 result = saa7146_wait_for_debi_done(saa, nobusyloop);
 if (result < 0)
  return result;

 saa7146_write(saa, DEBI_COMMAND, (count << 17) | 0x00000 | (addr & 0xffff));
 saa7146_write(saa, DEBI_CONFIG, config);
 saa7146_write(saa, DEBI_PAGE, 0);
 saa7146_write(saa, DEBI_AD, value);
 saa7146_write(saa, MC2, (2 << 16) | 2);

 result = saa7146_wait_for_debi_done(saa, nobusyloop);
 return result < 0 ? result : 0;
}
