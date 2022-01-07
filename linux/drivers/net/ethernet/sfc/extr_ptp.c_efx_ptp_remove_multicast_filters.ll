; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_remove_multicast_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_remove_multicast_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i32, i32, i32 }

@EFX_FILTER_PRI_REQUIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_ptp_remove_multicast_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ptp_remove_multicast_filters(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_ptp_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %4, i32 0, i32 0
  %6 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  store %struct.efx_ptp_data* %6, %struct.efx_ptp_data** %3, align 8
  %7 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %3, align 8
  %8 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %13 = load i32, i32* @EFX_FILTER_PRI_REQUIRED, align 4
  %14 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %3, align 8
  %15 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @efx_filter_remove_id_safe(%struct.efx_nic* %12, i32 %13, i32 %16)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %19 = load i32, i32* @EFX_FILTER_PRI_REQUIRED, align 4
  %20 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %3, align 8
  %21 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @efx_filter_remove_id_safe(%struct.efx_nic* %18, i32 %19, i32 %22)
  %24 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %3, align 8
  %25 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @efx_filter_remove_id_safe(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
