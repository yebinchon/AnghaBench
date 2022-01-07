; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_get_hw_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_get_hw_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@FLAG_HAS_SWSM_ON_LOAD = common dso_local global i32 0, align 4
@SWSM = common dso_local global i32 0, align 4
@E1000_SWSM_DRV_LOAD = common dso_local global i32 0, align 4
@FLAG_HAS_CTRLEXT_ON_LOAD = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_DRV_LOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_get_hw_control(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 1
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FLAG_HAS_SWSM_ON_LOAD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @SWSM, align 4
  %16 = call i32 @er32(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @SWSM, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @E1000_SWSM_DRV_LOAD, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @ew32(i32 %17, i32 %20)
  br label %38

22:                                               ; preds = %1
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FLAG_HAS_CTRLEXT_ON_LOAD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i32, i32* @CTRL_EXT, align 4
  %31 = call i32 @er32(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @CTRL_EXT, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @E1000_CTRL_EXT_DRV_LOAD, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @ew32(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %29, %22
  br label %38

38:                                               ; preds = %37, %14
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
