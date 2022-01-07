; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_paprd_populate_single_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_paprd_populate_single_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ath9k_hw_cal_data = type { i64*, i64** }

@AR_PHY_PAPRD_MEM_TAB_B0 = common dso_local global i64 0, align 8
@AR_PHY_PAPRD_MEM_TAB_B1 = common dso_local global i64 0, align 8
@AR_PHY_PAPRD_MEM_TAB_B2 = common dso_local global i64 0, align 8
@PAPRD_TABLE_SZ = common dso_local global i32 0, align 4
@AR_PHY_PA_GAIN123_B0 = common dso_local global i64 0, align 8
@AR_PHY_PA_GAIN123_B1 = common dso_local global i64 0, align 8
@AR_PHY_PA_GAIN123_B2 = common dso_local global i64 0, align 8
@AR_PHY_PA_GAIN123_PA_GAIN1 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_CTRL1_B0 = common dso_local global i64 0, align 8
@AR_PHY_PAPRD_CTRL1_PAPRD_POWER_AT_AM2AM_CAL = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_CTRL1_B1 = common dso_local global i64 0, align 8
@AR_PHY_PAPRD_CTRL1_B2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_paprd_populate_single_table(%struct.ath_hw* %0, %struct.ath9k_hw_cal_data* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_hw_cal_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_hw_cal_data* %1, %struct.ath9k_hw_cal_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %13 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %12, i32 0, i32 1
  %14 = load i64**, i64*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64*, i64** %14, i64 %16
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %7, align 8
  %19 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %20 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i64, i64* @AR_PHY_PAPRD_MEM_TAB_B0, align 8
  store i64 %32, i64* %10, align 8
  br label %45

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, i64* @AR_PHY_PAPRD_MEM_TAB_B1, align 8
  store i64 %37, i64* %10, align 8
  br label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* @AR_PHY_PAPRD_MEM_TAB_B2, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %38
  br label %44

44:                                               ; preds = %43, %36
  br label %45

45:                                               ; preds = %44, %31
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %61, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @PAPRD_TABLE_SZ, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @REG_WRITE(%struct.ath_hw* %51, i64 %52, i64 %57)
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, 4
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %46

64:                                               ; preds = %46
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i64, i64* @AR_PHY_PA_GAIN123_B0, align 8
  store i64 %68, i64* %10, align 8
  br label %77

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i64, i64* @AR_PHY_PA_GAIN123_B1, align 8
  store i64 %73, i64* %10, align 8
  br label %76

74:                                               ; preds = %69
  %75 = load i64, i64* @AR_PHY_PA_GAIN123_B2, align 8
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %74, %72
  br label %77

77:                                               ; preds = %76, %67
  %78 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i32, i32* @AR_PHY_PA_GAIN123_PA_GAIN1, align 4
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %78, i64 %79, i32 %80, i64 %81)
  %83 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %84 = load i64, i64* @AR_PHY_PAPRD_CTRL1_B0, align 8
  %85 = load i32, i32* @AR_PHY_PAPRD_CTRL1_PAPRD_POWER_AT_AM2AM_CAL, align 4
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %83, i64 %84, i32 %85, i64 %86)
  %88 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %89 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @BIT(i32 1)
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %77
  %96 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %97 = load i64, i64* @AR_PHY_PAPRD_CTRL1_B1, align 8
  %98 = load i32, i32* @AR_PHY_PAPRD_CTRL1_PAPRD_POWER_AT_AM2AM_CAL, align 4
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %96, i64 %97, i32 %98, i64 %99)
  br label %101

101:                                              ; preds = %95, %77
  %102 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %103 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @BIT(i32 2)
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %111 = load i64, i64* @AR_PHY_PAPRD_CTRL1_B2, align 8
  %112 = load i32, i32* @AR_PHY_PAPRD_CTRL1_PAPRD_POWER_AT_AM2AM_CAL, align 4
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %110, i64 %111, i32 %112, i64 %113)
  br label %115

115:                                              ; preds = %109, %101
  ret void
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i64) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i64, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
