; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9285_hw_clc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9285_hw_clc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_TX_PWRCTRL7 = common dso_local global i64 0, align 8
@AR_PHY_TX_PWRCTRL_TX_GAIN_TAB_MAX = common dso_local global i32 0, align 4
@AR_PHY_TX_GAIN_TBL1 = common dso_local global i64 0, align 8
@AR_PHY_TX_GAIN_CLC = common dso_local global i32 0, align 4
@AR_PHY_TX_GAIN_CLC_S = common dso_local global i32 0, align 4
@AR_PHY_CLC_TBL1 = common dso_local global i64 0, align 8
@AR_PHY_CLC_I0 = common dso_local global i32 0, align 4
@AR_PHY_CLC_I0_S = common dso_local global i32 0, align 4
@AR_PHY_CLC_Q0 = common dso_local global i32 0, align 4
@AR_PHY_CLC_Q0_S = common dso_local global i32 0, align 4
@AR9285_CLCAL_REDO_THRESH = common dso_local global i32 0, align 4
@AR9285_RF2G5 = common dso_local global i64 0, align 8
@AR9285_RF2G5_IC50TX = common dso_local global i32 0, align 4
@AR9285_RF2G5_IC50TX_XE_SET = common dso_local global i32 0, align 4
@AR9285_RF2G5_IC50TX_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9285_hw_clc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9285_hw_clc(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %17, align 4
  %18 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %19 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %20 = call i32 @ar9285_hw_cl_cal(%struct.ath_hw* %18, %struct.ath9k_channel* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %147

23:                                               ; preds = %2
  %24 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %25 = load i64, i64* @AR_PHY_TX_PWRCTRL7, align 8
  %26 = call i32 @REG_READ(%struct.ath_hw* %24, i64 %25)
  %27 = load i32, i32* @AR_PHY_TX_PWRCTRL_TX_GAIN_TAB_MAX, align 4
  %28 = call i32 @MS(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %59, %23
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %36 = load i64, i64* @AR_PHY_TX_GAIN_TBL1, align 8
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = call i32 @REG_READ(%struct.ath_hw* %35, i64 %40)
  %42 = load i32, i32* @AR_PHY_TX_GAIN_CLC, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @AR_PHY_TX_GAIN_CLC_S, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %51, %34
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %29

62:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %102, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %105

67:                                               ; preds = %63
  %68 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %69 = load i64, i64* @AR_PHY_CLC_TBL1, align 8
  %70 = load i32, i32* %6, align 4
  %71 = shl i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = call i32 @REG_READ(%struct.ath_hw* %68, i64 %73)
  %75 = load i32, i32* @AR_PHY_CLC_I0, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @AR_PHY_CLC_I0_S, align 4
  %78 = ashr i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %80 = load i64, i64* @AR_PHY_CLC_TBL1, align 8
  %81 = load i32, i32* %6, align 4
  %82 = shl i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %80, %83
  %85 = call i32 @REG_READ(%struct.ath_hw* %79, i64 %84)
  %86 = load i32, i32* @AR_PHY_CLC_Q0, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @AR_PHY_CLC_Q0_S, align 4
  %89 = ashr i32 %87, %88
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %67
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %92, %67
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %63

105:                                              ; preds = %63
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @AR9285_CLCAL_REDO_THRESH, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %145

112:                                              ; preds = %105
  %113 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %114 = load i64, i64* @AR9285_RF2G5, align 8
  %115 = call i32 @REG_READ(%struct.ath_hw* %113, i64 %114)
  store i32 %115, i32* %16, align 4
  %116 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %117 = call i64 @AR_SREV_9285E_20(%struct.ath_hw* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %121 = load i64, i64* @AR9285_RF2G5, align 8
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @AR9285_RF2G5_IC50TX, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @AR9285_RF2G5_IC50TX_XE_SET, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @REG_WRITE(%struct.ath_hw* %120, i64 %121, i32 %126)
  br label %137

128:                                              ; preds = %112
  %129 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %130 = load i64, i64* @AR9285_RF2G5, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @AR9285_RF2G5_IC50TX, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @AR9285_RF2G5_IC50TX_SET, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @REG_WRITE(%struct.ath_hw* %129, i64 %130, i32 %135)
  br label %137

137:                                              ; preds = %128, %119
  %138 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %139 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %140 = call i32 @ar9285_hw_cl_cal(%struct.ath_hw* %138, %struct.ath9k_channel* %139)
  store i32 %140, i32* %17, align 4
  %141 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %142 = load i64, i64* @AR9285_RF2G5, align 8
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @REG_WRITE(%struct.ath_hw* %141, i64 %142, i32 %143)
  br label %145

145:                                              ; preds = %137, %105
  %146 = load i32, i32* %17, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %22
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @ar9285_hw_cl_cal(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i64 @AR_SREV_9285E_20(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
