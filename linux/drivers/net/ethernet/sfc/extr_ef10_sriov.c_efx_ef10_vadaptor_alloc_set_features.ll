; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_vadaptor_alloc_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_vadaptor_alloc_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32 }

@MC_CMD_VPORT_ALLOC_IN_FLAG_VLAN_RESTRICT_LBN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@EVB_PORT_ID_ASSIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_ef10_vadaptor_alloc_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_vadaptor_alloc_set_features(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ef10_nic_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %8, align 8
  store %struct.efx_ef10_nic_data* %9, %struct.efx_ef10_nic_data** %4, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %12 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @efx_ef10_vadaptor_alloc(%struct.efx_nic* %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %21 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @efx_ef10_vadaptor_query(%struct.efx_nic* %19, i32 %22, i32* %5, i32* null, i32* null)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %47

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MC_CMD_VPORT_ALLOC_IN_FLAG_VLAN_RESTRICT_LBN, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %46

39:                                               ; preds = %27
  %40 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %39, %33
  store i32 0, i32* %2, align 4
  br label %53

47:                                               ; preds = %26
  %48 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %49 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %50 = call i32 @efx_ef10_vadaptor_free(%struct.efx_nic* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %17
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @efx_ef10_vadaptor_alloc(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_ef10_vadaptor_query(%struct.efx_nic*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @efx_ef10_vadaptor_free(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
