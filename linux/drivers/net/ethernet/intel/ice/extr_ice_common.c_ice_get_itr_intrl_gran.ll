; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_itr_intrl_gran.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_itr_intrl_gran.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32, i32 }

@GL_PWR_MODE_CTL = common dso_local global i32 0, align 4
@GL_PWR_MODE_CTL_CAR_MAX_BW_M = common dso_local global i32 0, align 4
@GL_PWR_MODE_CTL_CAR_MAX_BW_S = common dso_local global i32 0, align 4
@ICE_ITR_GRAN_ABOVE_25 = common dso_local global i32 0, align 4
@ICE_INTRL_GRAN_ABOVE_25 = common dso_local global i32 0, align 4
@ICE_ITR_GRAN_MAX_25 = common dso_local global i32 0, align 4
@ICE_INTRL_GRAN_MAX_25 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*)* @ice_get_itr_intrl_gran to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_get_itr_intrl_gran(%struct.ice_hw* %0) #0 {
  %2 = alloca %struct.ice_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %2, align 8
  %4 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %5 = load i32, i32* @GL_PWR_MODE_CTL, align 4
  %6 = call i32 @rd32(%struct.ice_hw* %4, i32 %5)
  %7 = load i32, i32* @GL_PWR_MODE_CTL_CAR_MAX_BW_M, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @GL_PWR_MODE_CTL_CAR_MAX_BW_S, align 4
  %10 = ashr i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %26 [
    i32 130, label %12
    i32 131, label %12
    i32 128, label %12
    i32 129, label %19
  ]

12:                                               ; preds = %1, %1, %1
  %13 = load i32, i32* @ICE_ITR_GRAN_ABOVE_25, align 4
  %14 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ICE_INTRL_GRAN_ABOVE_25, align 4
  %17 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @ICE_ITR_GRAN_MAX_25, align 4
  %21 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %22 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ICE_INTRL_GRAN_MAX_25, align 4
  %24 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %1, %19, %12
  ret void
}

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
