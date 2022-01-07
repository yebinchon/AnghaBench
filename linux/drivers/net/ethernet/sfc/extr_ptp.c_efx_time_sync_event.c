
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync_event_minor_shift; } ;
struct efx_ptp_data {TYPE_1__ nic_time; } ;
struct efx_nic {struct efx_ptp_data* ptp_data; } ;
struct efx_channel {int sync_timestamp_major; int sync_timestamp_minor; int sync_events_state; struct efx_nic* efx; } ;
typedef int efx_qword_t ;


 int MCDI_EVENT_FIELD (int ,int ) ;
 int PTP_TIME_MAJOR ;
 int PTP_TIME_MINOR_MS_8BITS ;
 int SYNC_EVENTS_REQUESTED ;
 int SYNC_EVENTS_VALID ;
 int cmpxchg (int *,int ,int ) ;

void efx_time_sync_event(struct efx_channel *channel, efx_qword_t *ev)
{
 struct efx_nic *efx = channel->efx;
 struct efx_ptp_data *ptp = efx->ptp_data;







 channel->sync_timestamp_major = MCDI_EVENT_FIELD(*ev, PTP_TIME_MAJOR);
 channel->sync_timestamp_minor =
  (MCDI_EVENT_FIELD(*ev, PTP_TIME_MINOR_MS_8BITS) & 0xFC)
   << ptp->nic_time.sync_event_minor_shift;




 (void) cmpxchg(&channel->sync_events_state, SYNC_EVENTS_REQUESTED,
         SYNC_EVENTS_VALID);
}
