; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_adc_gaincal_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_adc_gaincal_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64*, i64*, i64*, i64* }
%struct.ath_common = type { i32 }

@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Starting ADC Gain Cal for Chain %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Chn %d pwr_meas_odd_i = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Chn %d pwr_meas_even_i = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Chn %d pwr_meas_odd_q = 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Chn %d pwr_meas_even_q = 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Chn %d gain_mismatch_i = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Chn %d gain_mismatch_q = 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"ADC Gain Cal done for Chain %d\0A\00", align 1
@AR_PHY_NEW_ADC_GAIN_CORR_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64)* @ar9002_hw_adc_gaincal_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_adc_gaincal_calibrate(%struct.ath_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %5, align 8
  store i64 0, i64* %13, align 8
  br label %16

16:                                               ; preds = %117, %2
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %120

20:                                               ; preds = %16
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %46 = load i32, i32* @CALIBRATE, align 4
  %47 = load i64, i64* %13, align 8
  %48 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %45, i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %50 = load i32, i32* @CALIBRATE, align 4
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %49, i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %55 = load i32, i32* @CALIBRATE, align 4
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %54, i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %56, i64 %57)
  %59 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %60 = load i32, i32* @CALIBRATE, align 4
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %59, i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %61, i64 %62)
  %64 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %65 = load i32, i32* @CALIBRATE, align 4
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %64, i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %66, i64 %67)
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %116

71:                                               ; preds = %20
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %116

74:                                               ; preds = %71
  %75 = load i64, i64* %7, align 8
  %76 = mul i64 %75, 32
  %77 = load i64, i64* %6, align 8
  %78 = udiv i64 %76, %77
  %79 = and i64 %78, 63
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %8, align 8
  %81 = mul i64 %80, 32
  %82 = load i64, i64* %9, align 8
  %83 = udiv i64 %81, %82
  %84 = and i64 %83, 63
  store i64 %84, i64* %10, align 8
  %85 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %86 = load i32, i32* @CALIBRATE, align 4
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %85, i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %87, i64 %88)
  %90 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %91 = load i32, i32* @CALIBRATE, align 4
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %90, i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %92, i64 %93)
  %95 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64 %96)
  %98 = call i64 @REG_READ(%struct.ath_hw* %95, i32 %97)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = and i64 %99, 4294963200
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = shl i64 %102, 6
  %104 = or i64 %101, %103
  %105 = load i64, i64* %12, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %12, align 8
  %107 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64 %108)
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @REG_WRITE(%struct.ath_hw* %107, i32 %109, i64 %110)
  %112 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %113 = load i32, i32* @CALIBRATE, align 4
  %114 = load i64, i64* %13, align 8
  %115 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %112, i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %74, %71, %20
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %13, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %13, align 8
  br label %16

120:                                              ; preds = %16
  %121 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %122 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64 0)
  %123 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %124 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64 0)
  %125 = call i64 @REG_READ(%struct.ath_hw* %123, i32 %124)
  %126 = load i64, i64* @AR_PHY_NEW_ADC_GAIN_CORR_ENABLE, align 8
  %127 = or i64 %125, %126
  %128 = call i32 @REG_WRITE(%struct.ath_hw* %121, i32 %122, i64 %127)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, ...) #1

declare dso_local i64 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
