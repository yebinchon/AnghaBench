; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_atten_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_atten_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_EXT_ATTEN_CTL_0 = common dso_local global i64 0, align 8
@AR_PHY_EXT_ATTEN_CTL_1 = common dso_local global i64 0, align 8
@AR_PHY_EXT_ATTEN_CTL_2 = common dso_local global i64 0, align 8
@AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB = common dso_local global i32 0, align 4
@AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_atten_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_atten_apply(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i64], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %8 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %9 = load i64, i64* @AR_PHY_EXT_ATTEN_CTL_0, align 8
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 1
  %11 = load i64, i64* @AR_PHY_EXT_ATTEN_CTL_1, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 1
  %13 = load i64, i64* @AR_PHY_EXT_ATTEN_CTL_2, align 8
  store i64 %13, i64* %12, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = call i64 @AR_SREV_9462(%struct.ath_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %25 = call i32 @ar9003_hw_atten_chain_get(%struct.ath_hw* %23, i32 1, %struct.ath9k_channel* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %28 = load i64, i64* %27, align 16
  %29 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %26, i64 %28, i32 %29, i32 %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %34 = call i32 @ar9003_hw_atten_chain_get_margin(%struct.ath_hw* %32, i32 1, %struct.ath9k_channel* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %37 = load i64, i64* %36, align 16
  %38 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %35, i64 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %22, %17, %2
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %107, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %110

45:                                               ; preds = %42
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %106

53:                                               ; preds = %45
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %57 = call i32 @ar9003_hw_atten_chain_get(%struct.ath_hw* %54, i32 %55, %struct.ath9k_channel* %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %58, i64 %62, i32 %63, i32 %64)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = call i64 @AR_SREV_9485(%struct.ath_hw* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %53
  %70 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %71 = call i64 @ar9003_hw_get_rx_gain_idx(%struct.ath_hw* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %75 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 5, i32* %6, align 4
  br label %85

80:                                               ; preds = %73, %69, %53
  %81 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %84 = call i32 @ar9003_hw_atten_chain_get_margin(%struct.ath_hw* %81, i32 %82, %struct.ath9k_channel* %83)
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %80, %79
  %86 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %87 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %93 = load i64, i64* @AR_PHY_EXT_ATTEN_CTL_0, align 8
  %94 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %92, i64 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %98, i64 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %97, %45
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %42

110:                                              ; preds = %42
  ret void
}

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_atten_chain_get(%struct.ath_hw*, i32, %struct.ath9k_channel*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i64, i32, i32) #1

declare dso_local i32 @ar9003_hw_atten_chain_get_margin(%struct.ath_hw*, i32, %struct.ath9k_channel*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @ar9003_hw_get_rx_gain_idx(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
