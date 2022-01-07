; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_time_sync_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_time_sync_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PTP_TIME_MAJOR = common dso_local global i32 0, align 4
@PTP_TIME_MINOR_MS_8BITS = common dso_local global i32 0, align 4
@SYNC_EVENTS_REQUESTED = common dso_local global i32 0, align 4
@SYNC_EVENTS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_time_sync_event(%struct.efx_channel* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_ptp_data*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %8 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %7, i32 0, i32 3
  %9 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  store %struct.efx_nic* %9, %struct.efx_nic** %5, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %11, align 8
  store %struct.efx_ptp_data* %12, %struct.efx_ptp_data** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PTP_TIME_MAJOR, align 4
  %16 = call i32 @MCDI_EVENT_FIELD(i32 %14, i32 %15)
  %17 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %18 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PTP_TIME_MINOR_MS_8BITS, align 4
  %22 = call i32 @MCDI_EVENT_FIELD(i32 %20, i32 %21)
  %23 = and i32 %22, 252
  %24 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %25 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %23, %27
  %29 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %30 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %32 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %31, i32 0, i32 2
  %33 = load i32, i32* @SYNC_EVENTS_REQUESTED, align 4
  %34 = load i32, i32* @SYNC_EVENTS_VALID, align 4
  %35 = call i32 @cmpxchg(i32* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @MCDI_EVENT_FIELD(i32, i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
