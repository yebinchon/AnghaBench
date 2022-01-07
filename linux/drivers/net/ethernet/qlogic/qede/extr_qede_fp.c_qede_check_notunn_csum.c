
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int PARSING_AND_ERR_FLAGS_IPHDRERROR_MASK ;
 int PARSING_AND_ERR_FLAGS_IPHDRERROR_SHIFT ;
 int PARSING_AND_ERR_FLAGS_L4CHKSMERROR_MASK ;
 int PARSING_AND_ERR_FLAGS_L4CHKSMERROR_SHIFT ;
 int PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_MASK ;
 int PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_SHIFT ;
 int QEDE_CSUM_ERROR ;
 int QEDE_CSUM_UNNECESSARY ;

__attribute__((used)) static u8 qede_check_notunn_csum(u16 flag)
{
 u16 csum_flag = 0;
 u8 csum = 0;

 if (flag & (PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_MASK <<
      PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_SHIFT)) {
  csum_flag |= PARSING_AND_ERR_FLAGS_L4CHKSMERROR_MASK <<
        PARSING_AND_ERR_FLAGS_L4CHKSMERROR_SHIFT;
  csum = QEDE_CSUM_UNNECESSARY;
 }

 csum_flag |= PARSING_AND_ERR_FLAGS_IPHDRERROR_MASK <<
       PARSING_AND_ERR_FLAGS_IPHDRERROR_SHIFT;

 if (csum_flag & flag)
  return QEDE_CSUM_ERROR;

 return csum;
}
