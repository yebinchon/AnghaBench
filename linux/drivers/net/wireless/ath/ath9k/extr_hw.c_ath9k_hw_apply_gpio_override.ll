; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_apply_gpio_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_apply_gpio_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32 }

@AR_GPIO_OUTPUT_MUX_AS_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_apply_gpio_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_apply_gpio_override(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %37

16:                                               ; preds = %11
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_OUTPUT, align 4
  %20 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %17, i32 %18, i32* null, i32 %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @ath9k_hw_set_gpio(%struct.ath_hw* %21, i32 %22, i32 %32)
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ath9k_hw_gpio_free(%struct.ath_hw* %34, i32 %35)
  br label %37

37:                                               ; preds = %16, %15
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %8

42:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ath9k_hw_gpio_request_out(%struct.ath_hw*, i32, i32*, i32) #1

declare dso_local i32 @ath9k_hw_set_gpio(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ath9k_hw_gpio_free(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
