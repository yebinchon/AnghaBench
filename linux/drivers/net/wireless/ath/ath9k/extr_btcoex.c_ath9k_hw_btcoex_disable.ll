; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_btcoex_hw }
%struct.ath_btcoex_hw = type { i32, i64, i32 }

@ATH_BTCOEX_CFG_MCI = common dso_local global i64 0, align 8
@AR_GPIO_OUTPUT_MUX_AS_OUTPUT = common dso_local global i32 0, align 4
@ATH_BTCOEX_CFG_3WIRE = common dso_local global i64 0, align 8
@AR_BT_COEX_MODE = common dso_local global i32 0, align 4
@AR_BT_QUIET = common dso_local global i32 0, align 4
@AR_BT_MODE = common dso_local global i32 0, align 4
@AR_BT_COEX_MODE2 = common dso_local global i32 0, align 4
@AR_BT_COEX_WL_WEIGHTS0 = common dso_local global i32 0, align 4
@AR_BT_COEX_WL_WEIGHTS1 = common dso_local global i32 0, align 4
@AR9300_NUM_BT_WEIGHTS = common dso_local global i32 0, align 4
@AR_BT_COEX_WEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_btcoex_disable(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_btcoex_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 0
  store %struct.ath_btcoex_hw* %6, %struct.ath_btcoex_hw** %3, align 8
  %7 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = call i64 @ath9k_hw_get_btcoex_scheme(%struct.ath_hw* %9)
  %11 = load i64, i64* @ATH_BTCOEX_CFG_MCI, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = call i32 @ath9k_hw_btcoex_disable_mci(%struct.ath_hw* %14)
  br label %76

16:                                               ; preds = %1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ath9k_hw_set_gpio(%struct.ath_hw* %21, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_OUTPUT, align 4
  %32 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %27, i32 %30, i32* null, i32 %31)
  %33 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ATH_BTCOEX_CFG_3WIRE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %26
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = load i32, i32* @AR_BT_COEX_MODE, align 4
  %41 = load i32, i32* @AR_BT_QUIET, align 4
  %42 = load i32, i32* @AR_BT_MODE, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @REG_WRITE(%struct.ath_hw* %39, i32 %40, i32 %43)
  %45 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %46 = load i32, i32* @AR_BT_COEX_MODE2, align 4
  %47 = call i32 @REG_WRITE(%struct.ath_hw* %45, i32 %46, i32 0)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %49 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %38
  %52 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %53 = load i32, i32* @AR_BT_COEX_WL_WEIGHTS0, align 4
  %54 = call i32 @REG_WRITE(%struct.ath_hw* %52, i32 %53, i32 0)
  %55 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %56 = load i32, i32* @AR_BT_COEX_WL_WEIGHTS1, align 4
  %57 = call i32 @REG_WRITE(%struct.ath_hw* %55, i32 %56, i32 0)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %67, %51
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @AR9300_NUM_BT_WEIGHTS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @AR_BT_COEX_BT_WEIGHTS(i32 %64)
  %66 = call i32 @REG_WRITE(%struct.ath_hw* %63, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %58

70:                                               ; preds = %58
  br label %75

71:                                               ; preds = %38
  %72 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %73 = load i32, i32* @AR_BT_COEX_WEIGHT, align 4
  %74 = call i32 @REG_WRITE(%struct.ath_hw* %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %71, %70
  br label %76

76:                                               ; preds = %13, %75, %26
  ret void
}

declare dso_local i64 @ath9k_hw_get_btcoex_scheme(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_btcoex_disable_mci(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_gpio(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_gpio_request_out(%struct.ath_hw*, i32, i32*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_BT_COEX_BT_WEIGHTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
