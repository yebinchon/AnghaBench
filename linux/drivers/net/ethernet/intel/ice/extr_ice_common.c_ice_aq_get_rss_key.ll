; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_get_rss_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_get_rss_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_get_set_rss_keys = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_get_rss_key(%struct.ice_hw* %0, i32 %1, %struct.ice_aqc_get_set_rss_keys* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_aqc_get_set_rss_keys*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ice_aqc_get_set_rss_keys* %2, %struct.ice_aqc_get_set_rss_keys** %7, align 8
  %8 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @ice_is_vsi_valid(%struct.ice_hw* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.ice_aqc_get_set_rss_keys*, %struct.ice_aqc_get_set_rss_keys** %7, align 8
  %14 = icmp ne %struct.ice_aqc_get_set_rss_keys* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %12
  %18 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %19 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ice_get_hw_vsi_num(%struct.ice_hw* %19, i32 %20)
  %22 = load %struct.ice_aqc_get_set_rss_keys*, %struct.ice_aqc_get_set_rss_keys** %7, align 8
  %23 = call i32 @__ice_aq_get_set_rss_key(%struct.ice_hw* %18, i32 %21, %struct.ice_aqc_get_set_rss_keys* %22, i32 0)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %17, %15
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @ice_is_vsi_valid(%struct.ice_hw*, i32) #1

declare dso_local i32 @__ice_aq_get_set_rss_key(%struct.ice_hw*, i32, %struct.ice_aqc_get_set_rss_keys*, i32) #1

declare dso_local i32 @ice_get_hw_vsi_num(%struct.ice_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
