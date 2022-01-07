; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_nic_to_kernel_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_nic_to_kernel_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { %struct.TYPE_2__, i32 (i32, i32, i32)* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_ptp_nic_to_kernel_time(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ptp_data*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %6 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %7 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %6, i32 0, i32 2
  %8 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  store %struct.efx_nic* %8, %struct.efx_nic** %3, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 0
  %11 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %10, align 8
  store %struct.efx_ptp_data* %11, %struct.efx_ptp_data** %4, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = call i64 @efx_ptp_use_mac_tx_timestamps(%struct.efx_nic* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %18 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %19 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %22 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %25 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @efx_ptp_mac_nic_to_ktime_correction(%struct.efx_nic* %16, %struct.efx_ptp_data* %17, i32 %20, i32 %23, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %44

29:                                               ; preds = %1
  %30 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %31 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %30, i32 0, i32 1
  %32 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %31, align 8
  %33 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %34 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %37 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %40 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %32(i32 %35, i32 %38, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %29, %15
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @efx_ptp_use_mac_tx_timestamps(%struct.efx_nic*) #1

declare dso_local i32 @efx_ptp_mac_nic_to_ktime_correction(%struct.efx_nic*, %struct.efx_ptp_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
