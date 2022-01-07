; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_vlan_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_vlan_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_rx_filter_vlan = type { i32, i32, i64 }

@AQ_VLAN_MAX_FILTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_rx_filter_vlan*)* @hw_atl_b0_hw_vlan_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_vlan_set(%struct.aq_hw_s* %0, %struct.aq_rx_filter_vlan* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.aq_rx_filter_vlan*, align 8
  %5 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.aq_rx_filter_vlan* %1, %struct.aq_rx_filter_vlan** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %62, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @AQ_VLAN_MAX_FILTERS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %65

10:                                               ; preds = %6
  %11 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @hw_atl_rpf_vlan_flr_en_set(%struct.aq_hw_s* %11, i32 0, i32 %12)
  %14 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @hw_atl_rpf_vlan_rxq_en_flr_set(%struct.aq_hw_s* %14, i32 0, i32 %15)
  %17 = load %struct.aq_rx_filter_vlan*, %struct.aq_rx_filter_vlan** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.aq_rx_filter_vlan, %struct.aq_rx_filter_vlan* %17, i64 %19
  %21 = getelementptr inbounds %struct.aq_rx_filter_vlan, %struct.aq_rx_filter_vlan* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %10
  %25 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %26 = load %struct.aq_rx_filter_vlan*, %struct.aq_rx_filter_vlan** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.aq_rx_filter_vlan, %struct.aq_rx_filter_vlan* %26, i64 %28
  %30 = getelementptr inbounds %struct.aq_rx_filter_vlan, %struct.aq_rx_filter_vlan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @hw_atl_rpf_vlan_id_flr_set(%struct.aq_hw_s* %25, i32 %31, i32 %32)
  %34 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @hw_atl_rpf_vlan_flr_act_set(%struct.aq_hw_s* %34, i32 1, i32 %35)
  %37 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @hw_atl_rpf_vlan_flr_en_set(%struct.aq_hw_s* %37, i32 1, i32 %38)
  %40 = load %struct.aq_rx_filter_vlan*, %struct.aq_rx_filter_vlan** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.aq_rx_filter_vlan, %struct.aq_rx_filter_vlan* %40, i64 %42
  %44 = getelementptr inbounds %struct.aq_rx_filter_vlan, %struct.aq_rx_filter_vlan* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 255
  br i1 %46, label %47, label %60

47:                                               ; preds = %24
  %48 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %49 = load %struct.aq_rx_filter_vlan*, %struct.aq_rx_filter_vlan** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.aq_rx_filter_vlan, %struct.aq_rx_filter_vlan* %49, i64 %51
  %53 = getelementptr inbounds %struct.aq_rx_filter_vlan, %struct.aq_rx_filter_vlan* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @hw_atl_rpf_vlan_rxq_flr_set(%struct.aq_hw_s* %48, i32 %54, i32 %55)
  %57 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @hw_atl_rpf_vlan_rxq_en_flr_set(%struct.aq_hw_s* %57, i32 1, i32 %58)
  br label %60

60:                                               ; preds = %47, %24
  br label %61

61:                                               ; preds = %60, %10
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %6

65:                                               ; preds = %6
  %66 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %67 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %66)
  ret i32 %67
}

declare dso_local i32 @hw_atl_rpf_vlan_flr_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_vlan_rxq_en_flr_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_vlan_id_flr_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_vlan_flr_act_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_vlan_rxq_flr_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
