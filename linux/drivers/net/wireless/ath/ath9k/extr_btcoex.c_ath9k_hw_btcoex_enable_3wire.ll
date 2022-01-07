; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_enable_3wire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_enable_3wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_btcoex_hw }
%struct.ath_btcoex_hw = type { i32, i32, i32, i32*, i32*, i32, i32 }

@AR_BT_COEX_MODE2 = common dso_local global i32 0, align 4
@AR_BT_PHY_ERR_BT_COLL_ENABLE = common dso_local global i32 0, align 4
@AR_BT_COEX_MODE = common dso_local global i32 0, align 4
@AR_BT_COEX_MODE3 = common dso_local global i32 0, align 4
@AR_BT_COEX_WL_WEIGHTS0 = common dso_local global i32 0, align 4
@AR_BT_COEX_WL_WEIGHTS1 = common dso_local global i32 0, align 4
@AR9300_NUM_BT_WEIGHTS = common dso_local global i32 0, align 4
@AR_BT_COEX_WEIGHT = common dso_local global i32 0, align 4
@AR_QUIET1 = common dso_local global i32 0, align 4
@AR_QUIET1_QUIET_ACK_CTS_ENABLE = common dso_local global i32 0, align 4
@AR_PCU_MISC = common dso_local global i32 0, align 4
@AR_PCU_BT_ANT_PREVENT_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ath9k-wlanactive\00", align 1
@AR_GPIO_OUTPUT_MUX_AS_RX_CLEAR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_btcoex_enable_3wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_btcoex_enable_3wire(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_btcoex_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  store %struct.ath_btcoex_hw* %7, %struct.ath_btcoex_hw** %3, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = call i64 @AR_SREV_SOC(%struct.ath_hw* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = load i32, i32* @AR_BT_COEX_MODE2, align 4
  %14 = load i32, i32* @AR_BT_PHY_ERR_BT_COLL_ENABLE, align 4
  %15 = call i32 @REG_CLR_BIT(%struct.ath_hw* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = load i32, i32* @AR_BT_COEX_MODE, align 4
  %19 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @REG_WRITE(%struct.ath_hw* %17, i32 %18, i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_BT_COEX_MODE2, align 4
  %25 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @REG_WRITE(%struct.ath_hw* %23, i32 %24, i32 %27)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = call i64 @AR_SREV_SOC(%struct.ath_hw* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %16
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = load i32, i32* @AR_BT_COEX_MODE3, align 4
  %35 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @REG_WRITE(%struct.ath_hw* %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %16
  %40 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %41 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %39
  %44 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %45 = load i32, i32* @AR_BT_COEX_WL_WEIGHTS0, align 4
  %46 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @REG_WRITE(%struct.ath_hw* %44, i32 %45, i32 %50)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %53 = load i32, i32* @AR_BT_COEX_WL_WEIGHTS1, align 4
  %54 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @REG_WRITE(%struct.ath_hw* %52, i32 %53, i32 %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %76, %43
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @AR9300_NUM_BT_WEIGHTS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @AR_BT_COEX_BT_WEIGHTS(i32 %66)
  %68 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %69 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @REG_WRITE(%struct.ath_hw* %65, i32 %67, i32 %74)
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %60

79:                                               ; preds = %60
  br label %87

80:                                               ; preds = %39
  %81 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %82 = load i32, i32* @AR_BT_COEX_WEIGHT, align 4
  %83 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %84 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @REG_WRITE(%struct.ath_hw* %81, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %80, %79
  %88 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %89 = call i64 @AR_SREV_9271(%struct.ath_hw* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %93 = call i32 @REG_READ(%struct.ath_hw* %92, i32 327744)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, -257
  store i32 %95, i32* %4, align 4
  %96 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @REG_WRITE(%struct.ath_hw* %96, i32 327744, i32 %97)
  br label %99

99:                                               ; preds = %91, %87
  %100 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %101 = load i32, i32* @AR_QUIET1, align 4
  %102 = load i32, i32* @AR_QUIET1_QUIET_ACK_CTS_ENABLE, align 4
  %103 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %100, i32 %101, i32 %102, i32 1)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %105 = load i32, i32* @AR_PCU_MISC, align 4
  %106 = load i32, i32* @AR_PCU_BT_ANT_PREVENT_RX, align 4
  %107 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %104, i32 %105, i32 %106, i32 0)
  %108 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %109 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %110 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_RX_CLEAR_EXTERNAL, align 4
  %113 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %108, i32 %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %112)
  ret void
}

declare dso_local i64 @AR_SREV_SOC(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @AR_BT_COEX_BT_WEIGHTS(i32) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_gpio_request_out(%struct.ath_hw*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
