; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_mac_address_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_mac_address_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_6__*, i32, %struct.siena_nic_data* }
%struct.TYPE_6__ = type { i32 }
%struct.siena_nic_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vfdi_status* }
%struct.vfdi_status = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@vfdi_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_siena_sriov_mac_address_changed(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.siena_nic_data*, align 8
  %5 = alloca %struct.vfdi_status*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 2
  %8 = load %struct.siena_nic_data*, %struct.siena_nic_data** %7, align 8
  store %struct.siena_nic_data* %8, %struct.siena_nic_data** %4, align 8
  %9 = load %struct.siena_nic_data*, %struct.siena_nic_data** %4, align 8
  %10 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.vfdi_status*, %struct.vfdi_status** %11, align 8
  store %struct.vfdi_status* %12, %struct.vfdi_status** %5, align 8
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.vfdi_status*, %struct.vfdi_status** %5, align 8
  %20 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ether_addr_copy(i32 %24, i32 %29)
  %31 = load i32, i32* @vfdi_workqueue, align 4
  %32 = load %struct.siena_nic_data*, %struct.siena_nic_data** %4, align 8
  %33 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %32, i32 0, i32 0
  %34 = call i32 @queue_work(i32 %31, i32* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %18, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
