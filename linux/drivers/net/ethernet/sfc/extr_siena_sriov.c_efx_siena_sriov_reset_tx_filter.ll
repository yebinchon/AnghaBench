; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_reset_tx_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_reset_tx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siena_vf = type { i32, i64, i32, %struct.TYPE_2__, %struct.efx_nic* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.efx_nic = type { i32 }
%struct.efx_filter_spec = type { i32 }

@EFX_FILTER_PRI_REQUIRED = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Removed vf %s tx filter %d\0A\00", align 1
@VF_TX_FILTER_AUTO = common dso_local global i64 0, align 8
@vf_max_tx_channels = common dso_local global i32 0, align 4
@VF_TX_FILTER_ON = common dso_local global i64 0, align 8
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@EFX_FILTER_VID_UNSPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to migrate tx filter for vf %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Inserted vf %s tx filter %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siena_vf*)* @efx_siena_sriov_reset_tx_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_siena_sriov_reset_tx_filter(%struct.siena_vf* %0) #0 {
  %2 = alloca %struct.siena_vf*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_filter_spec, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.siena_vf* %0, %struct.siena_vf** %2, align 8
  %7 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %8 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %7, i32 0, i32 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  store %struct.efx_nic* %9, %struct.efx_nic** %3, align 8
  %10 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %11 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = load i32, i32* @EFX_FILTER_PRI_REQUIRED, align 4
  %17 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %18 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @efx_filter_remove_id_safe(%struct.efx_nic* %15, i32 %16, i32 %19)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %22 = load i32, i32* @hw, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %27 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %30 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @netif_dbg(%struct.efx_nic* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %34 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  br label %35

35:                                               ; preds = %14, %1
  %36 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %37 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @is_zero_ether_addr(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %110

43:                                               ; preds = %35
  %44 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %45 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VF_TX_FILTER_AUTO, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32, i32* @vf_max_tx_channels, align 4
  %51 = icmp sle i32 %50, 2
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* @VF_TX_FILTER_ON, align 8
  %54 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %55 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %49, %43
  %57 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %58 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntohs(i32 %60)
  %62 = load i32, i32* @VLAN_VID_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %65 = call i32 @abs_index(%struct.siena_vf* %64, i32 0)
  %66 = call i32 @efx_filter_init_tx(%struct.efx_filter_spec* %4, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32, i32* %5, align 4
  br label %73

71:                                               ; preds = %56
  %72 = load i32, i32* @EFX_FILTER_VID_UNSPEC, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %76 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @efx_filter_set_eth_local(%struct.efx_filter_spec* %4, i32 %74, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %83 = call i32 @efx_filter_insert_filter(%struct.efx_nic* %82, %struct.efx_filter_spec* %4, i32 1)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %73
  %87 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %88 = load i32, i32* @hw, align 4
  %89 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %90 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %93 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @netif_warn(%struct.efx_nic* %87, i32 %88, i32 %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %110

96:                                               ; preds = %73
  %97 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %98 = load i32, i32* @hw, align 4
  %99 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %100 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %103 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @netif_dbg(%struct.efx_nic* %97, i32 %98, i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %109 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %42, %96, %86
  ret void
}

declare dso_local i32 @efx_filter_remove_id_safe(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @efx_filter_init_tx(%struct.efx_filter_spec*, i32) #1

declare dso_local i32 @abs_index(%struct.siena_vf*, i32) #1

declare dso_local i32 @efx_filter_set_eth_local(%struct.efx_filter_spec*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @efx_filter_insert_filter(%struct.efx_nic*, %struct.efx_filter_spec*, i32) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
