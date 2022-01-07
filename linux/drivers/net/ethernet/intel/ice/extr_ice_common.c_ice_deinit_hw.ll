; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_deinit_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_deinit_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_deinit_hw(%struct.ice_hw* %0) #0 {
  %2 = alloca %struct.ice_hw*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %2, align 8
  %3 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %4 = call i32 @ice_cleanup_fltr_mgmt_struct(%struct.ice_hw* %3)
  %5 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %6 = call i32 @ice_sched_cleanup_all(%struct.ice_hw* %5)
  %7 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %8 = call i32 @ice_sched_clear_agg(%struct.ice_hw* %7)
  %9 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %10 = call i32 @ice_free_seg(%struct.ice_hw* %9)
  %11 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %12 = call i32 @ice_free_hw_tbls(%struct.ice_hw* %11)
  %13 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %19 = call i32 @ice_hw_to_dev(%struct.ice_hw* %18)
  %20 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @devm_kfree(i32 %19, i32* %22)
  %24 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %28 = call i32 @ice_cfg_fw_log(%struct.ice_hw* %27, i32 0)
  %29 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %30 = call i32 @ice_destroy_all_ctrlq(%struct.ice_hw* %29)
  %31 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %32 = call i32 @ice_clear_all_vsi_ctx(%struct.ice_hw* %31)
  ret void
}

declare dso_local i32 @ice_cleanup_fltr_mgmt_struct(%struct.ice_hw*) #1

declare dso_local i32 @ice_sched_cleanup_all(%struct.ice_hw*) #1

declare dso_local i32 @ice_sched_clear_agg(%struct.ice_hw*) #1

declare dso_local i32 @ice_free_seg(%struct.ice_hw*) #1

declare dso_local i32 @ice_free_hw_tbls(%struct.ice_hw*) #1

declare dso_local i32 @devm_kfree(i32, i32*) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_cfg_fw_log(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_destroy_all_ctrlq(%struct.ice_hw*) #1

declare dso_local i32 @ice_clear_all_vsi_ctx(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
