
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int efx_qword_t ;


 int EFX_QWORD_FIELD (int ,int ) ;
 int TX_TIMESTAMP_EVENT_TSTAMP_DATA_HI ;
 int TX_TIMESTAMP_EVENT_TSTAMP_DATA_LO ;

__attribute__((used)) static u32 efx_ef10_extract_event_ts(efx_qword_t *event)
{
 u32 tstamp;

 tstamp = EFX_QWORD_FIELD(*event, TX_TIMESTAMP_EVENT_TSTAMP_DATA_HI);
 tstamp <<= 16;
 tstamp |= EFX_QWORD_FIELD(*event, TX_TIMESTAMP_EVENT_TSTAMP_DATA_LO);

 return tstamp;
}
