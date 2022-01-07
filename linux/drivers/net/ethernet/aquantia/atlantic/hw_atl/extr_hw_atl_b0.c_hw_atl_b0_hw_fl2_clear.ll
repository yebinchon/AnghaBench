; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_fl2_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_fl2_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_rx_filter_l2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_rx_filter_l2*)* @hw_atl_b0_hw_fl2_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_fl2_clear(%struct.aq_hw_s* %0, %struct.aq_rx_filter_l2* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.aq_rx_filter_l2*, align 8
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.aq_rx_filter_l2* %1, %struct.aq_rx_filter_l2** %4, align 8
  %5 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %6 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %7 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @hw_atl_rpf_etht_flr_en_set(%struct.aq_hw_s* %5, i32 0, i32 %8)
  %10 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %11 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %12 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @hw_atl_rpf_etht_flr_set(%struct.aq_hw_s* %10, i32 0, i32 %13)
  %15 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %16 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %17 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @hw_atl_rpf_etht_user_priority_en_set(%struct.aq_hw_s* %15, i32 0, i32 %18)
  %20 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %21 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %20)
  ret i32 %21
}

declare dso_local i32 @hw_atl_rpf_etht_flr_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_etht_flr_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_etht_user_priority_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
