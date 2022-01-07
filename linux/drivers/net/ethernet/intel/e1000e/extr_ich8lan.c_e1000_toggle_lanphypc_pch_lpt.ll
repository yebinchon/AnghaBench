; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_toggle_lanphypc_pch_lpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_toggle_lanphypc_pch_lpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FEXTNVM3 = common dso_local global i32 0, align 4
@E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK = common dso_local global i32 0, align 4
@E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_LANPHYPC_OVERRIDE = common dso_local global i32 0, align 4
@E1000_CTRL_LANPHYPC_VALUE = common dso_local global i32 0, align 4
@e1000_pch_lpt = common dso_local global i64 0, align 8
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LPCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_toggle_lanphypc_pch_lpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_toggle_lanphypc_pch_lpt(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load i32, i32* @FEXTNVM3, align 4
  %6 = call i32 @er32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @FEXTNVM3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ew32(i32 %14, i32 %15)
  %17 = load i32, i32* @CTRL, align 4
  %18 = call i32 @er32(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @E1000_CTRL_LANPHYPC_OVERRIDE, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @E1000_CTRL_LANPHYPC_VALUE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @CTRL, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ew32(i32 %26, i32 %27)
  %29 = call i32 (...) @e1e_flush()
  %30 = call i32 @usleep_range(i32 10, i32 20)
  %31 = load i32, i32* @E1000_CTRL_LANPHYPC_OVERRIDE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @CTRL, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ew32(i32 %35, i32 %36)
  %38 = call i32 (...) @e1e_flush()
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @e1000_pch_lpt, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = call i32 @msleep(i32 50)
  br label %64

47:                                               ; preds = %1
  store i32 20, i32* %4, align 4
  br label %48

48:                                               ; preds = %60, %47
  %49 = call i32 @usleep_range(i32 5000, i32 6000)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* @CTRL_EXT, align 4
  %52 = call i32 @er32(i32 %51)
  %53 = load i32, i32* @E1000_CTRL_EXT_LPCD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  %59 = icmp ne i32 %57, 0
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi i1 [ false, %50 ], [ %59, %56 ]
  br i1 %61, label %48, label %62

62:                                               ; preds = %60
  %63 = call i32 @msleep(i32 30)
  br label %64

64:                                               ; preds = %62, %45
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
