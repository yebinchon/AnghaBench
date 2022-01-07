
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRCM_PLLDSI_LOCKP ;
 int PRCM_PLLDSI_LOCKP_PRCM_PLLDSI_LOCKP10 ;
 int PRCM_PLLDSI_LOCKP_PRCM_PLLDSI_LOCKP3 ;
 int readl (int ) ;

__attribute__((used)) static inline bool plldsi_locked(void)
{
 return (readl(PRCM_PLLDSI_LOCKP) &
  (PRCM_PLLDSI_LOCKP_PRCM_PLLDSI_LOCKP10 |
   PRCM_PLLDSI_LOCKP_PRCM_PLLDSI_LOCKP3)) ==
  (PRCM_PLLDSI_LOCKP_PRCM_PLLDSI_LOCKP10 |
   PRCM_PLLDSI_LOCKP_PRCM_PLLDSI_LOCKP3);
}
