; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_ptp_set_ts_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_ptp_set_ts_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.hwtstamp_config = type { i32, i32 }

@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.hwtstamp_config*)* @efx_ef10_ptp_set_ts_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_ptp_set_ts_config(%struct.efx_nic* %0, %struct.hwtstamp_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.hwtstamp_config*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.hwtstamp_config* %1, %struct.hwtstamp_config** %5, align 8
  %7 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %8 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %39 [
    i32 141, label %10
    i32 142, label %21
    i32 138, label %21
    i32 137, label %21
    i32 139, label %21
    i32 130, label %21
    i32 129, label %21
    i32 131, label %21
    i32 133, label %21
    i32 132, label %21
    i32 134, label %21
    i32 135, label %21
    i32 128, label %21
    i32 136, label %21
    i32 140, label %21
  ]

10:                                               ; preds = %2
  %11 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %12 = call i32 @efx_ef10_ptp_set_ts_sync_events(%struct.efx_nic* %11, i32 0, i32 0)
  %13 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %14 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %15 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @efx_ptp_change_mode(%struct.efx_nic* %13, i32 %19, i32 0)
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %22 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %23 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %22, i32 0, i32 0
  store i32 142, i32* %23, align 4
  %24 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %25 = call i32 @efx_ptp_change_mode(%struct.efx_nic* %24, i32 1, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %30 = call i32 @efx_ef10_ptp_set_ts_sync_events(%struct.efx_nic* %29, i32 1, i32 0)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %36 = call i32 @efx_ptp_change_mode(%struct.efx_nic* %35, i32 0, i32 0)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @ERANGE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %37, %10
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @efx_ef10_ptp_set_ts_sync_events(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @efx_ptp_change_mode(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
