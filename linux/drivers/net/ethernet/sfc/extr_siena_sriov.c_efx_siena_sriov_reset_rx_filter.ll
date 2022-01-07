; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_reset_rx_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_reset_rx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siena_vf = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.efx_nic* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.efx_nic = type { i32 }
%struct.efx_filter_spec = type { i32 }

@EFX_FILTER_PRI_REQUIRED = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Removed vf %s rx filter %d\0A\00", align 1
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@EFX_FILTER_VID_UNSPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to insert rx filter for vf %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Inserted vf %s rx filter %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siena_vf*)* @efx_siena_sriov_reset_rx_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_siena_sriov_reset_rx_filter(%struct.siena_vf* %0) #0 {
  %2 = alloca %struct.siena_vf*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_filter_spec, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.siena_vf* %0, %struct.siena_vf** %2, align 8
  %7 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %8 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %7, i32 0, i32 6
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
  %27 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
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
  %37 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %42 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @is_zero_ether_addr(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %35
  br label %109

48:                                               ; preds = %40
  %49 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %50 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohs(i32 %52)
  %54 = load i32, i32* @VLAN_VID_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @EFX_FILTER_PRI_REQUIRED, align 4
  %57 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %58 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %61 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %62 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @abs_index(%struct.siena_vf* %60, i32 %63)
  %65 = call i32 @efx_filter_init_rx(%struct.efx_filter_spec* %4, i32 %56, i32 %59, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = load i32, i32* %5, align 4
  br label %72

70:                                               ; preds = %48
  %71 = load i32, i32* @EFX_FILTER_VID_UNSPEC, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %75 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @efx_filter_set_eth_local(%struct.efx_filter_spec* %4, i32 %73, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %82 = call i32 @efx_filter_insert_filter(%struct.efx_nic* %81, %struct.efx_filter_spec* %4, i32 1)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %72
  %86 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %87 = load i32, i32* @hw, align 4
  %88 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %89 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %92 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @netif_warn(%struct.efx_nic* %86, i32 %87, i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %109

95:                                               ; preds = %72
  %96 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %97 = load i32, i32* @hw, align 4
  %98 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %99 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %102 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @netif_dbg(%struct.efx_nic* %96, i32 %97, i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %108 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %47, %95, %85
  ret void
}

declare dso_local i32 @efx_filter_remove_id_safe(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @efx_filter_init_rx(%struct.efx_filter_spec*, i32, i32, i32) #1

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
