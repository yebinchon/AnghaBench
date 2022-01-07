
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MVNETA_RXD_FIRST_LAST_DESC ;

__attribute__((used)) static int mvneta_rxq_desc_is_first_last(u32 status)
{
 return (status & MVNETA_RXD_FIRST_LAST_DESC) ==
  MVNETA_RXD_FIRST_LAST_DESC;
}
