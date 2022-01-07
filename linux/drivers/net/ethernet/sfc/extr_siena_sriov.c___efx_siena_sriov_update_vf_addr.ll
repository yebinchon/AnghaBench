; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c___efx_siena_sriov_update_vf_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c___efx_siena_sriov_update_vf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siena_vf = type { %struct.efx_nic* }
%struct.efx_nic = type { %struct.siena_nic_data* }
%struct.siena_nic_data = type { i32 }

@vfdi_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siena_vf*)* @__efx_siena_sriov_update_vf_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__efx_siena_sriov_update_vf_addr(%struct.siena_vf* %0) #0 {
  %2 = alloca %struct.siena_vf*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.siena_nic_data*, align 8
  store %struct.siena_vf* %0, %struct.siena_vf** %2, align 8
  %5 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %6 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %5, i32 0, i32 0
  %7 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  store %struct.efx_nic* %7, %struct.efx_nic** %3, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load %struct.siena_nic_data*, %struct.siena_nic_data** %9, align 8
  store %struct.siena_nic_data* %10, %struct.siena_nic_data** %4, align 8
  %11 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %12 = call i32 @efx_siena_sriov_reset_tx_filter(%struct.siena_vf* %11)
  %13 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %14 = call i32 @efx_siena_sriov_reset_rx_filter(%struct.siena_vf* %13)
  %15 = load i32, i32* @vfdi_workqueue, align 4
  %16 = load %struct.siena_nic_data*, %struct.siena_nic_data** %4, align 8
  %17 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %16, i32 0, i32 0
  %18 = call i32 @queue_work(i32 %15, i32* %17)
  ret void
}

declare dso_local i32 @efx_siena_sriov_reset_tx_filter(%struct.siena_vf*) #1

declare dso_local i32 @efx_siena_sriov_reset_rx_filter(%struct.siena_vf*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
