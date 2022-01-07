; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_get_desired_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_get_desired_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_PAPRD_TRAINER_STAT1 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE = common dso_local global i32 0, align 4
@AR_PHY_TPC_12 = common dso_local global i32 0, align 4
@AR_PHY_TPC_12_DESIRED_SCALE_HT40_5 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_ALPHA_THERM = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_ALPHA_VOLT = common dso_local global i32 0, align 4
@AR_PHY_TPC_18 = common dso_local global i32 0, align 4
@AR_PHY_TPC_18_THERM_CAL_VALUE = common dso_local global i32 0, align 4
@AR_PHY_TPC_18_VOLT_CAL_VALUE = common dso_local global i32 0, align 4
@AR_PHY_BB_THERM_ADC_4 = common dso_local global i32 0, align 4
@AR_PHY_BB_THERM_ADC_4_LATEST_THERM_VALUE = common dso_local global i32 0, align 4
@AR_PHY_BB_THERM_ADC_4_LATEST_VOLT_VALUE = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B0 = common dso_local global i32 0, align 4
@AR_PHY_CL_TAB_0 = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B1 = common dso_local global i32 0, align 4
@AR_PHY_CL_TAB_1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B2 = common dso_local global i32 0, align 4
@AR_PHY_CL_TAB_2 = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid chainmask: %d\0A\00", align 1
@AR_PHY_TPC_11_OLPC_GAIN_DELTA = common dso_local global i32 0, align 4
@AR_PHY_CL_TAB_CL_GAIN_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32)* @ar9003_get_desired_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_get_desired_gain(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %22 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1, align 4
  %23 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, align 4
  %24 = call i32 @REG_CLR_BIT(%struct.ath_hw* %21, i32 %22, i32 %23)
  %25 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %26 = load i32, i32* @AR_PHY_TPC_12, align 4
  %27 = load i32, i32* @AR_PHY_TPC_12_DESIRED_SCALE_HT40_5, align 4
  %28 = call i32 @REG_READ_FIELD(%struct.ath_hw* %25, i32 %26, i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %30 = load i32, i32* @AR_PHY_TPC_19, align 4
  %31 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %32 = call i32 @REG_READ_FIELD(%struct.ath_hw* %29, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %34 = load i32, i32* @AR_PHY_TPC_19, align 4
  %35 = load i32, i32* @AR_PHY_TPC_19_ALPHA_VOLT, align 4
  %36 = call i32 @REG_READ_FIELD(%struct.ath_hw* %33, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = load i32, i32* @AR_PHY_TPC_18, align 4
  %39 = load i32, i32* @AR_PHY_TPC_18_THERM_CAL_VALUE, align 4
  %40 = call i32 @REG_READ_FIELD(%struct.ath_hw* %37, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %42 = load i32, i32* @AR_PHY_TPC_18, align 4
  %43 = load i32, i32* @AR_PHY_TPC_18_VOLT_CAL_VALUE, align 4
  %44 = call i32 @REG_READ_FIELD(%struct.ath_hw* %41, i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %46 = load i32, i32* @AR_PHY_BB_THERM_ADC_4, align 4
  %47 = load i32, i32* @AR_PHY_BB_THERM_ADC_4_LATEST_THERM_VALUE, align 4
  %48 = call i32 @REG_READ_FIELD(%struct.ath_hw* %45, i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %50 = load i32, i32* @AR_PHY_BB_THERM_ADC_4, align 4
  %51 = load i32, i32* @AR_PHY_BB_THERM_ADC_4_LATEST_VOLT_VALUE, align 4
  %52 = call i32 @REG_READ_FIELD(%struct.ath_hw* %49, i32 %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %63 [
    i32 0, label %54
    i32 1, label %57
    i32 2, label %60
  ]

54:                                               ; preds = %3
  %55 = load i32, i32* @AR_PHY_TPC_11_B0, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* @AR_PHY_CL_TAB_0, align 4
  store i32 %56, i32* %20, align 4
  br label %69

57:                                               ; preds = %3
  %58 = load i32, i32* @AR_PHY_TPC_11_B1, align 4
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* @AR_PHY_CL_TAB_1, align 4
  store i32 %59, i32* %20, align 4
  br label %69

60:                                               ; preds = %3
  %61 = load i32, i32* @AR_PHY_TPC_11_B2, align 4
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* @AR_PHY_CL_TAB_2, align 4
  store i32 %62, i32* %20, align 4
  br label %69

63:                                               ; preds = %3
  %64 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %65 = call i32 @ath9k_hw_common(%struct.ath_hw* %64)
  %66 = load i32, i32* @CALIBRATE, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ath_dbg(i32 %65, i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %60, %57, %54
  %70 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* @AR_PHY_TPC_11_OLPC_GAIN_DELTA, align 4
  %73 = call i32 @REG_READ_FIELD(%struct.ath_hw* %70, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* @AR_PHY_CL_TAB_CL_GAIN_MOD, align 4
  %77 = call i32 @REG_READ_FIELD(%struct.ath_hw* %74, i32 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp sge i32 %78, 128
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, 256
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %69
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %85, %86
  %88 = mul nsw i32 %84, %87
  %89 = add nsw i32 %88, 128
  %90 = sdiv i32 %89, 256
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %92, %93
  %95 = mul nsw i32 %91, %94
  %96 = add nsw i32 %95, 64
  %97 = sdiv i32 %96, 128
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %15, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  ret i32 %109
}

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
