; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_init_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_init_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__, %struct.ath_btcoex_hw }
%struct.TYPE_2__ = type { i32 }
%struct.ath_btcoex_hw = type { i8* }
%struct.ath_common = type { i32 }

@ATH_BTCOEX_CFG_NONE = common dso_local global i8* null, align 8
@ATH9K_HW_CAP_MCI = common dso_local global i32 0, align 4
@ATH_BTCOEX_CFG_MCI = common dso_local global i8* null, align 8
@ATH_BTCOEX_CFG_3WIRE = common dso_local global i8* null, align 8
@ATH_WLANACTIVE_GPIO_9300 = common dso_local global i32 0, align 4
@ATH_BTACTIVE_GPIO_9300 = common dso_local global i32 0, align 4
@ATH_BTPRIORITY_GPIO_9300 = common dso_local global i32 0, align 4
@ATH_BTCOEX_CFG_2WIRE = common dso_local global i8* null, align 8
@ATH_WLANACTIVE_GPIO_9280 = common dso_local global i32 0, align 4
@ATH_BTACTIVE_GPIO_9280 = common dso_local global i32 0, align 4
@ATH_BTPRIORITY_GPIO_9285 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_btcoex_init_scheme(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath_btcoex_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %5)
  store %struct.ath_common* %6, %struct.ath_common** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 1
  store %struct.ath_btcoex_hw* %8, %struct.ath_btcoex_hw** %4, align 8
  %9 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %10 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** @ATH_BTCOEX_CFG_NONE, align 8
  %15 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  br label %66

17:                                               ; preds = %1
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATH9K_HW_CAP_MCI, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i8*, i8** @ATH_BTCOEX_CFG_MCI, align 8
  %27 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %66

29:                                               ; preds = %17
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i8*, i8** @ATH_BTCOEX_CFG_3WIRE, align 8
  %35 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = load i32, i32* @ATH_WLANACTIVE_GPIO_9300, align 4
  %39 = load i32, i32* @ATH_BTACTIVE_GPIO_9300, align 4
  %40 = load i32, i32* @ATH_BTPRIORITY_GPIO_9300, align 4
  %41 = call i32 @ath9k_hw_btcoex_pin_init(%struct.ath_hw* %37, i32 %38, i32 %39, i32 %40)
  br label %65

42:                                               ; preds = %29
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = call i64 @AR_SREV_9285(%struct.ath_hw* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** @ATH_BTCOEX_CFG_3WIRE, align 8
  %52 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %53 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %58

54:                                               ; preds = %46
  %55 = load i8*, i8** @ATH_BTCOEX_CFG_2WIRE, align 8
  %56 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %57 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %60 = load i32, i32* @ATH_WLANACTIVE_GPIO_9280, align 4
  %61 = load i32, i32* @ATH_BTACTIVE_GPIO_9280, align 4
  %62 = load i32, i32* @ATH_BTPRIORITY_GPIO_9285, align 4
  %63 = call i32 @ath9k_hw_btcoex_pin_init(%struct.ath_hw* %59, i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %42
  br label %65

65:                                               ; preds = %64, %33
  br label %66

66:                                               ; preds = %13, %65, %25
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_btcoex_pin_init(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
