
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct efx_nic {int link_state; } ;
typedef int efx_qword_t ;


 size_t ARRAY_SIZE (size_t*) ;
 size_t EFX_QWORD_FIELD (int ,int ) ;
 int EFX_WARN_ON_PARANOID (int) ;
 int MCDI_EVENT_LINKCHANGE_FCNTL ;
 int MCDI_EVENT_LINKCHANGE_LINK_FLAGS ;
 int MCDI_EVENT_LINKCHANGE_LP_CAP ;
 int MCDI_EVENT_LINKCHANGE_SPEED ;
 int efx_link_status_changed (struct efx_nic*) ;
 size_t* efx_mcdi_event_link_speed ;
 int efx_mcdi_phy_check_fcntl (struct efx_nic*,size_t) ;
 int efx_mcdi_phy_decode_link (struct efx_nic*,int *,size_t,size_t,size_t) ;

void efx_mcdi_process_link_change(struct efx_nic *efx, efx_qword_t *ev)
{
 u32 flags, fcntl, speed, lpa;

 speed = EFX_QWORD_FIELD(*ev, MCDI_EVENT_LINKCHANGE_SPEED);
 EFX_WARN_ON_PARANOID(speed >= ARRAY_SIZE(efx_mcdi_event_link_speed));
 speed = efx_mcdi_event_link_speed[speed];

 flags = EFX_QWORD_FIELD(*ev, MCDI_EVENT_LINKCHANGE_LINK_FLAGS);
 fcntl = EFX_QWORD_FIELD(*ev, MCDI_EVENT_LINKCHANGE_FCNTL);
 lpa = EFX_QWORD_FIELD(*ev, MCDI_EVENT_LINKCHANGE_LP_CAP);





 efx_mcdi_phy_decode_link(efx, &efx->link_state, speed, flags, fcntl);

 efx_mcdi_phy_check_fcntl(efx, lpa);

 efx_link_status_changed(efx);
}
