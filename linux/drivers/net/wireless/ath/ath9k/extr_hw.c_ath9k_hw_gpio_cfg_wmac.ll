; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gpio_cfg_wmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gpio_cfg_wmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR7010_GPIO_OE_AS_OUTPUT = common dso_local global i32 0, align 4
@AR7010_GPIO_OE_AS_INPUT = common dso_local global i32 0, align 4
@AR7010_GPIO_OE = common dso_local global i32 0, align 4
@AR7010_GPIO_OE_MASK = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT_DRV_ALL = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT_DRV_NO = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT_DRV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32, i32)* @ath9k_hw_gpio_cfg_wmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_gpio_cfg_wmac(%struct.ath_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %13 = call i64 @AR_DEVID_7010(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @AR7010_GPIO_OE_AS_OUTPUT, align 4
  br label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @AR7010_GPIO_OE_AS_INPUT, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %25 = load i32, i32* @AR7010_GPIO_OE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* @AR7010_GPIO_OE_MASK, align 4
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 %29, %30
  %32 = call i32 @REG_RMW(%struct.ath_hw* %24, i32 %25, i32 %28, i32 %31)
  br label %80

33:                                               ; preds = %4
  %34 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %35 = call i64 @AR_SREV_SOC(%struct.ath_hw* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %43 = load i32, i32* @AR_GPIO_OE_OUT, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 %47, %48
  %50 = call i32 @REG_RMW(%struct.ath_hw* %42, i32 %43, i32 %46, i32 %49)
  br label %79

51:                                               ; preds = %33
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @AR_GPIO_OE_OUT_DRV_ALL, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @AR_GPIO_OE_OUT_DRV_NO, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %9, align 4
  %62 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %63 = load i32, i32* @AR_GPIO_OE_OUT, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* @AR_GPIO_OE_OUT_DRV, align 4
  %68 = load i32, i32* %10, align 4
  %69 = shl i32 %67, %68
  %70 = call i32 @REG_RMW(%struct.ath_hw* %62, i32 %63, i32 %66, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  %74 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @ath9k_hw_gpio_cfg_output_mux(%struct.ath_hw* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %60
  br label %79

79:                                               ; preds = %78, %37
  br label %80

80:                                               ; preds = %79, %22
  ret void
}

declare dso_local i64 @AR_DEVID_7010(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_SOC(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_gpio_cfg_output_mux(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
