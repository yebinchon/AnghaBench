
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TX_STATUS_DIRECT_DONE ;
 int TX_STATUS_MSK ;
 int TX_STATUS_SUCCESS ;

__attribute__((used)) static inline bool
il4965_is_tx_success(u32 status)
{
 status &= TX_STATUS_MSK;
 return (status == TX_STATUS_SUCCESS || status == TX_STATUS_DIRECT_DONE);
}
