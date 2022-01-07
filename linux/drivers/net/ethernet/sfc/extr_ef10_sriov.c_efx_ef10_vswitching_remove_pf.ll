; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_vswitching_remove_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_vswitching_remove_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_2__*, %struct.efx_ef10_nic_data* }
%struct.TYPE_2__ = type { i32 }
%struct.efx_ef10_nic_data = type { i64, i32 }

@EVB_PORT_ID_ASSIGNED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_ef10_vswitching_remove_pf(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_ef10_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %4, i32 0, i32 2
  %6 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %5, align 8
  store %struct.efx_ef10_nic_data* %6, %struct.efx_ef10_nic_data** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = call i32 @efx_ef10_sriov_free_vf_vswitching(%struct.efx_nic* %7)
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %11 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @efx_ef10_vadaptor_free(%struct.efx_nic* %9, i64 %12)
  %14 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %15 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EVB_PORT_ID_ASSIGNED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %61

20:                                               ; preds = %1
  %21 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %22 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @is_zero_ether_addr(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %20
  %27 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %28 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %29 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @efx_ef10_vport_del_mac(%struct.efx_nic* %27, i64 %30, i32 %35)
  %37 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %38 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @eth_zero_addr(i32 %39)
  br label %41

41:                                               ; preds = %26, %20
  %42 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %43 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %44 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @efx_ef10_vport_free(%struct.efx_nic* %42, i64 %45)
  %47 = load i64, i64* @EVB_PORT_ID_ASSIGNED, align 8
  %48 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %49 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %51 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pci_vfs_assigned(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %41
  %56 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %57 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %58 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @efx_ef10_vswitch_free(%struct.efx_nic* %56, i64 %59)
  br label %61

61:                                               ; preds = %19, %55, %41
  ret void
}

declare dso_local i32 @efx_ef10_sriov_free_vf_vswitching(%struct.efx_nic*) #1

declare dso_local i32 @efx_ef10_vadaptor_free(%struct.efx_nic*, i64) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @efx_ef10_vport_del_mac(%struct.efx_nic*, i64, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @efx_ef10_vport_free(%struct.efx_nic*, i64) #1

declare dso_local i32 @pci_vfs_assigned(i32) #1

declare dso_local i32 @efx_ef10_vswitch_free(%struct.efx_nic*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
