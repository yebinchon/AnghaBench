
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ATH6KL_TID_MASK ;

__attribute__((used)) static inline u8 ath6kl_get_tid(u8 tid_mux)
{
 return tid_mux & ATH6KL_TID_MASK;
}
