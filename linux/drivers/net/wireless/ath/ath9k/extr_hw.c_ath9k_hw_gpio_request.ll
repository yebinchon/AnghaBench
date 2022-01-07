; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64, i32, i8*, i64)* @ath9k_hw_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_gpio_request(%struct.ath_hw* %0, i64 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %11, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @BIT(i64 %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %20, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @ath9k_hw_gpio_cfg_wmac(%struct.ath_hw* %28, i64 %29, i32 %30, i64 %31)
  br label %46

33:                                               ; preds = %5
  %34 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %35 = call i64 @AR_SREV_SOC(%struct.ath_hw* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @ath9k_hw_gpio_cfg_soc(%struct.ath_hw* %38, i64 %39, i32 %40, i8* %41)
  br label %45

43:                                               ; preds = %33
  %44 = call i32 @WARN_ON(i32 1)
  br label %45

45:                                               ; preds = %43, %37
  br label %46

46:                                               ; preds = %45, %27
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @ath9k_hw_gpio_cfg_wmac(%struct.ath_hw*, i64, i32, i64) #1

declare dso_local i64 @AR_SREV_SOC(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_gpio_cfg_soc(%struct.ath_hw*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
