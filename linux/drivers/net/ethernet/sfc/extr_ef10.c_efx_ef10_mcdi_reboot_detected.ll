; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_mcdi_reboot_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_mcdi_reboot_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32, i64* }

@EF10_STAT_port_rx_bad_bytes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_ef10_mcdi_reboot_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_mcdi_reboot_detected(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_ef10_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %4, i32 0, i32 0
  %6 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %5, align 8
  store %struct.efx_ef10_nic_data* %6, %struct.efx_ef10_nic_data** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = call i32 @efx_ef10_reset_mc_allocations(%struct.efx_nic* %7)
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %10 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %12 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @EF10_STAT_port_rx_bad_bytes, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 0, i64* %15, align 8
  ret void
}

declare dso_local i32 @efx_ef10_reset_mc_allocations(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
