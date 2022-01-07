; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_ptp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_start(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ptp_data*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 0
  %8 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  store %struct.efx_ptp_data* %8, %struct.efx_ptp_data** %4, align 8
  %9 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %10 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = call i32 @efx_ptp_insert_multicast_filters(%struct.efx_nic* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = call i32 @efx_ptp_enable(%struct.efx_nic* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %28

23:                                               ; preds = %17
  %24 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %25 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %27 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  store i32 0, i32* %2, align 4
  br label %32

28:                                               ; preds = %22
  %29 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %30 = call i32 @efx_ptp_remove_multicast_filters(%struct.efx_nic* %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %23, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @efx_ptp_insert_multicast_filters(%struct.efx_nic*) #1

declare dso_local i32 @efx_ptp_enable(%struct.efx_nic*) #1

declare dso_local i32 @efx_ptp_remove_multicast_filters(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
