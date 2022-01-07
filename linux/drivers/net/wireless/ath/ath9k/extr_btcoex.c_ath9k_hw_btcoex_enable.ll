; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_btcoex_hw }
%struct.ath_btcoex_hw = type { i32, i32 }

@AR_GPIO_PDPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_btcoex_enable(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_btcoex_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  store %struct.ath_btcoex_hw* %5, %struct.ath_btcoex_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = call i32 @ath9k_hw_get_btcoex_scheme(%struct.ath_hw* %6)
  switch i32 %7, label %18 [
    i32 128, label %8
    i32 131, label %9
    i32 130, label %12
    i32 129, label %15
  ]

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %11 = call i32 @ath9k_hw_btcoex_enable_2wire(%struct.ath_hw* %10)
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = call i32 @ath9k_hw_btcoex_enable_3wire(%struct.ath_hw* %13)
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = call i32 @ath9k_hw_btcoex_enable_mci(%struct.ath_hw* %16)
  br label %18

18:                                               ; preds = %1, %15, %12, %9
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = call i32 @ath9k_hw_get_btcoex_scheme(%struct.ath_hw* %19)
  %21 = icmp ne i32 %20, 129
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = call i32 @AR_SREV_SOC(%struct.ath_hw* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = load i32, i32* @AR_GPIO_PDPU, align 4
  %29 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 2
  %33 = shl i32 2, %32
  %34 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 2
  %38 = shl i32 3, %37
  %39 = call i32 @REG_RMW(%struct.ath_hw* %27, i32 %28, i32 %33, i32 %38)
  br label %40

40:                                               ; preds = %26, %22, %18
  %41 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %8
  ret void
}

declare dso_local i32 @ath9k_hw_get_btcoex_scheme(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_btcoex_enable_2wire(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_btcoex_enable_3wire(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_btcoex_enable_mci(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_SOC(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
