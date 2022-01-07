; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_update_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_update_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_vsi_ctx = type { i32 }
%struct.ice_sq_cd = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_update_vsi(%struct.ice_hw* %0, i32 %1, %struct.ice_vsi_ctx* %2, %struct.ice_sq_cd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_vsi_ctx*, align 8
  %9 = alloca %struct.ice_sq_cd*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ice_vsi_ctx* %2, %struct.ice_vsi_ctx** %8, align 8
  store %struct.ice_sq_cd* %3, %struct.ice_sq_cd** %9, align 8
  %10 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @ice_is_vsi_valid(%struct.ice_hw* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %15, i32* %5, align 4
  br label %26

16:                                               ; preds = %4
  %17 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ice_get_hw_vsi_num(%struct.ice_hw* %17, i32 %18)
  %20 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %23 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %24 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %9, align 8
  %25 = call i32 @ice_aq_update_vsi(%struct.ice_hw* %22, %struct.ice_vsi_ctx* %23, %struct.ice_sq_cd* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %16, %14
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @ice_is_vsi_valid(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_get_hw_vsi_num(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_aq_update_vsi(%struct.ice_hw*, %struct.ice_vsi_ctx*, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
