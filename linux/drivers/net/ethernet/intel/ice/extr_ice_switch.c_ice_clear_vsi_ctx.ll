; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_clear_vsi_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_clear_vsi_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32** }
%struct.ice_vsi_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*, i64)* @ice_clear_vsi_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_clear_vsi_ctx(%struct.ice_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ice_vsi_ctx*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.ice_hw* %6, i64 %7)
  store %struct.ice_vsi_ctx* %8, %struct.ice_vsi_ctx** %5, align 8
  %9 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %5, align 8
  %10 = icmp ne %struct.ice_vsi_ctx* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @ice_clear_vsi_q_ctx(%struct.ice_hw* %12, i64 %13)
  %15 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %16 = call i32 @ice_hw_to_dev(%struct.ice_hw* %15)
  %17 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %5, align 8
  %18 = call i32 @devm_kfree(i32 %16, %struct.ice_vsi_ctx* %17)
  %19 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32*, i32** %21, i64 %22
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.ice_hw*, i64) #1

declare dso_local i32 @ice_clear_vsi_q_ctx(%struct.ice_hw*, i64) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_vsi_ctx*) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
