; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@AR7010_GPIO_OUT = common dso_local global i64 0, align 8
@AR_GPIO_IN_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_set_gpio(%struct.ath_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %8, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %17 = call i64 @AR_DEVID_7010(%struct.ath_hw* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %21 = call i64 @AR_SREV_9271(%struct.ath_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19, %3
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %6, align 8
  br label %36

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %29, %23
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @BIT(i64 %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %38, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %36
  %46 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %47 = call i64 @AR_DEVID_7010(%struct.ath_hw* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @AR7010_GPIO_OUT, align 8
  br label %53

51:                                               ; preds = %45
  %52 = load i64, i64* @AR_GPIO_IN_OUT, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  store i64 %54, i64* %7, align 8
  %55 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %5, align 8
  %59 = shl i64 %57, %58
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @BIT(i64 %60)
  %62 = call i32 @REG_RMW(%struct.ath_hw* %55, i64 %56, i64 %59, i32 %61)
  br label %79

63:                                               ; preds = %36
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @BIT(i64 %64)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %67 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %65, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @gpio_set_value(i64 %73, i64 %74)
  br label %78

76:                                               ; preds = %63
  %77 = call i32 @WARN_ON(i32 1)
  br label %78

78:                                               ; preds = %76, %72
  br label %79

79:                                               ; preds = %78, %53
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @AR_DEVID_7010(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i64, i64, i32) #1

declare dso_local i32 @gpio_set_value(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
