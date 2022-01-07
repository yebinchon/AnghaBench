; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_ptp_set_ts_sync_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_ptp_set_ts_sync_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_channel = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, i32)* @efx_ef10_ptp_set_ts_sync_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_ptp_set_ts_sync_events(%struct.efx_nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.efx_channel*, i32)*, align 8
  %9 = alloca %struct.efx_channel*, align 8
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 (%struct.efx_channel*, i32)* @efx_ef10_rx_enable_timestamping, i32 (%struct.efx_channel*, i32)* @efx_ef10_rx_disable_timestamping
  store i32 (%struct.efx_channel*, i32)* %14, i32 (%struct.efx_channel*, i32)** %8, align 8
  %15 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %16 = call %struct.efx_channel* @efx_ptp_channel(%struct.efx_nic* %15)
  store %struct.efx_channel* %16, %struct.efx_channel** %9, align 8
  %17 = load %struct.efx_channel*, %struct.efx_channel** %9, align 8
  %18 = icmp ne %struct.efx_channel* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load i32 (%struct.efx_channel*, i32)*, i32 (%struct.efx_channel*, i32)** %8, align 8
  %21 = load %struct.efx_channel*, %struct.efx_channel** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 %20(%struct.efx_channel* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @efx_ef10_ptp_set_ts_sync_events(%struct.efx_nic* %30, i32 0, i32 %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %26, %19
  br label %35

35:                                               ; preds = %34, %3
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @efx_ef10_rx_enable_timestamping(%struct.efx_channel*, i32) #1

declare dso_local i32 @efx_ef10_rx_disable_timestamping(%struct.efx_channel*, i32) #1

declare dso_local %struct.efx_channel* @efx_ptp_channel(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
