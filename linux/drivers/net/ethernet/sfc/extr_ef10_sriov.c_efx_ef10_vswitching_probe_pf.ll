; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_vswitching_probe_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_vswitching_probe_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.net_device*, %struct.efx_ef10_nic_data* }
%struct.net_device = type { i32 }
%struct.efx_ef10_nic_data = type { i32, i32 }

@EVB_PORT_ID_ASSIGNED = common dso_local global i32 0, align 4
@MC_CMD_VSWITCH_ALLOC_IN_VSWITCH_TYPE_VEB = common dso_local global i32 0, align 4
@MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL = common dso_local global i32 0, align 4
@EFX_EF10_NO_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_ef10_vswitching_probe_pf(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ef10_nic_data*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 2
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %8, align 8
  store %struct.efx_ef10_nic_data* %9, %struct.efx_ef10_nic_data** %4, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @pci_sriov_get_totalvfs(i32 %15)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = call i32 @efx_ef10_vadaptor_alloc_set_features(%struct.efx_nic* %19)
  store i32 0, i32* %2, align 4
  br label %94

21:                                               ; preds = %1
  %22 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %23 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %24 = load i32, i32* @MC_CMD_VSWITCH_ALLOC_IN_VSWITCH_TYPE_VEB, align 4
  %25 = call i32 @efx_ef10_vswitch_alloc(%struct.efx_nic* %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %92

29:                                               ; preds = %21
  %30 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %31 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %32 = load i32, i32* @MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL, align 4
  %33 = load i32, i32* @EFX_EF10_NO_VLAN, align 4
  %34 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %35 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %34, i32 0, i32 0
  %36 = call i32 @efx_ef10_vport_alloc(%struct.efx_nic* %30, i32 %31, i32 %32, i32 %33, i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %88

40:                                               ; preds = %29
  %41 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %42 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %43 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @efx_ef10_vport_add_mac(%struct.efx_nic* %41, i32 %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %79

52:                                               ; preds = %40
  %53 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %54 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ether_addr_copy(i32 %55, i32 %58)
  %60 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %61 = call i32 @efx_ef10_vadaptor_alloc_set_features(%struct.efx_nic* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %66

65:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %94

66:                                               ; preds = %64
  %67 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %68 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %69 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %72 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @efx_ef10_vport_del_mac(%struct.efx_nic* %67, i32 %70, i32 %73)
  %75 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %76 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @eth_zero_addr(i32 %77)
  br label %79

79:                                               ; preds = %66, %51
  %80 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %81 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %82 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @efx_ef10_vport_free(%struct.efx_nic* %80, i32 %83)
  %85 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %86 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %87 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %79, %39
  %89 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %90 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %91 = call i32 @efx_ef10_vswitch_free(%struct.efx_nic* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %28
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %65, %18
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @pci_sriov_get_totalvfs(i32) #1

declare dso_local i32 @efx_ef10_vadaptor_alloc_set_features(%struct.efx_nic*) #1

declare dso_local i32 @efx_ef10_vswitch_alloc(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @efx_ef10_vport_alloc(%struct.efx_nic*, i32, i32, i32, i32*) #1

declare dso_local i32 @efx_ef10_vport_add_mac(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @efx_ef10_vport_del_mac(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @efx_ef10_vport_free(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_ef10_vswitch_free(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
