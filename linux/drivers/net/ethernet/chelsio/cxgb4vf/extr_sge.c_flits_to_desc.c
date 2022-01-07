
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be64 ;


 int BUG_ON (int) ;
 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int SGE_MAX_WR_LEN ;
 int TXD_PER_EQ_UNIT ;

__attribute__((used)) static inline unsigned int flits_to_desc(unsigned int flits)
{
 BUG_ON(flits > SGE_MAX_WR_LEN / sizeof(__be64));
 return DIV_ROUND_UP(flits, TXD_PER_EQ_UNIT);
}
