; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_free_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_free_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_vsi_ctx = type { i32 }
%struct.ice_sq_cd = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_free_vsi(%struct.ice_hw* %0, i32 %1, %struct.ice_vsi_ctx* %2, i32 %3, %struct.ice_sq_cd* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_vsi_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ice_sq_cd*, align 8
  %12 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ice_vsi_ctx* %2, %struct.ice_vsi_ctx** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ice_sq_cd* %4, %struct.ice_sq_cd** %11, align 8
  %13 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @ice_is_vsi_valid(%struct.ice_hw* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %18, i32* %6, align 4
  br label %38

19:                                               ; preds = %5
  %20 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ice_get_hw_vsi_num(%struct.ice_hw* %20, i32 %21)
  %23 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %9, align 8
  %24 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %26 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %11, align 8
  %29 = call i32 @ice_aq_free_vsi(%struct.ice_hw* %25, %struct.ice_vsi_ctx* %26, i32 %27, %struct.ice_sq_cd* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %19
  %33 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ice_clear_vsi_ctx(%struct.ice_hw* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %19
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %17
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @ice_is_vsi_valid(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_get_hw_vsi_num(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_aq_free_vsi(%struct.ice_hw*, %struct.ice_vsi_ctx*, i32, %struct.ice_sq_cd*) #1

declare dso_local i32 @ice_clear_vsi_ctx(%struct.ice_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
