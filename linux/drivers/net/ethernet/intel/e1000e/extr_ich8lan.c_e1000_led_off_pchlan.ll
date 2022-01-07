; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_led_off_pchlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_led_off_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_PHY_LED0_MASK = common dso_local global i32 0, align 4
@E1000_PHY_LED0_MODE_MASK = common dso_local global i32 0, align 4
@E1000_LEDCTL_MODE_LINK_UP = common dso_local global i32 0, align 4
@E1000_PHY_LED0_IVRT = common dso_local global i32 0, align 4
@HV_LED_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_led_off_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_led_off_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @STATUS, align 4
  %11 = call i32 @er32(i32 %10)
  %12 = load i32, i32* @E1000_STATUS_LU, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %56

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %21, 5
  %23 = ashr i32 %20, %22
  %24 = load i32, i32* @E1000_PHY_LED0_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @E1000_PHY_LED0_MODE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @E1000_LEDCTL_MODE_LINK_UP, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %53

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @E1000_PHY_LED0_IVRT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* @E1000_PHY_LED0_IVRT, align 4
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 %39, 5
  %41 = shl i32 %38, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %52

45:                                               ; preds = %32
  %46 = load i32, i32* @E1000_PHY_LED0_IVRT, align 4
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 %47, 5
  %49 = shl i32 %46, %48
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %37
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %16

56:                                               ; preds = %16
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = load i32, i32* @HV_LED_CONFIG, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @e1e_wphy(%struct.e1000_hw* %58, i32 %59, i32 %60)
  ret i32 %61
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
