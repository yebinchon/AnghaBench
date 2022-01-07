; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_init_fltr_mgmt_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_init_fltr_mgmt_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_switch_info* }
%struct.ice_switch_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*)* @ice_init_fltr_mgmt_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_init_fltr_mgmt_struct(%struct.ice_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_switch_info*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  %5 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %6 = call i32 @ice_hw_to_dev(%struct.ice_hw* %5)
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ice_switch_info* @devm_kzalloc(i32 %6, i32 4, i32 %7)
  %9 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %9, i32 0, i32 0
  store %struct.ice_switch_info* %8, %struct.ice_switch_info** %10, align 8
  %11 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %11, i32 0, i32 0
  %13 = load %struct.ice_switch_info*, %struct.ice_switch_info** %12, align 8
  store %struct.ice_switch_info* %13, %struct.ice_switch_info** %4, align 8
  %14 = load %struct.ice_switch_info*, %struct.ice_switch_info** %4, align 8
  %15 = icmp ne %struct.ice_switch_info* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %17, i32* %2, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.ice_switch_info*, %struct.ice_switch_info** %4, align 8
  %20 = getelementptr inbounds %struct.ice_switch_info, %struct.ice_switch_info* %19, i32 0, i32 0
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %23 = call i32 @ice_init_def_sw_recp(%struct.ice_hw* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %18, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.ice_switch_info* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ice_init_def_sw_recp(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
