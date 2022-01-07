; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_blink_led_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_blink_led_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@e1000_media_type_fiber = common dso_local global i64 0, align 8
@E1000_LEDCTL_LED0_BLINK = common dso_local global i32 0, align 4
@E1000_LEDCTL_MODE_LED_ON = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_MODE_SHIFT = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_MODE_MASK = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_IVRT = common dso_local global i32 0, align 4
@E1000_LEDCTL_MODE_LED_OFF = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_blink_led_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_media_type_fiber, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @E1000_LEDCTL_LED0_BLINK, align 4
  %15 = load i32, i32* @E1000_LEDCTL_MODE_LED_ON, align 4
  %16 = load i32, i32* @E1000_LEDCTL_LED0_MODE_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  store i32 %18, i32* %3, align 4
  br label %78

19:                                               ; preds = %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %74, %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %77

27:                                               ; preds = %24
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @E1000_LEDCTL_LED0_MODE_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @E1000_LEDCTL_LED0_IVRT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @E1000_LEDCTL_MODE_LED_ON, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %46, %27
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @E1000_LEDCTL_LED0_IVRT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @E1000_LEDCTL_MODE_LED_OFF, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55, %46
  %60 = load i32, i32* @E1000_LEDCTL_LED0_MODE_MASK, align 4
  %61 = load i32, i32* %4, align 4
  %62 = shl i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @E1000_LEDCTL_LED0_BLINK, align 4
  %67 = load i32, i32* @E1000_LEDCTL_MODE_LED_ON, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %59, %55, %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 8
  store i32 %76, i32* %4, align 4
  br label %24

77:                                               ; preds = %24
  br label %78

78:                                               ; preds = %77, %13
  %79 = load i32, i32* @LEDCTL, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @ew32(i32 %79, i32 %80)
  ret i32 0
}

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
