; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_cal_pier_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_cal_pier_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.ar9300_cal_data_per_freq_op_loop**, i32*, %struct.ar9300_cal_data_per_freq_op_loop**, i32* }
%struct.ar9300_cal_data_per_freq_op_loop = type { i32, i32, i32, i32, i64, i32 }
%struct.ath_common = type { i32 }

@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid chain index, must be less than %d\0A\00", align 1
@AR9300_NUM_5G_CAL_PIERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Invalid 5GHz cal pier index, must be less than %d\0A\00", align 1
@AR9300_NUM_2G_CAL_PIERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Invalid 2GHz cal pier index, must be less than %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*)* @ar9003_hw_cal_pier_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_cal_pier_get(%struct.ath_hw* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath_hw*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.ar9300_cal_data_per_freq_op_loop*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.ar9300_eeprom*, align 8
  %26 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.ar9300_eeprom* %29, %struct.ar9300_eeprom** %25, align 8
  %30 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %31 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %30)
  store %struct.ath_common* %31, %struct.ath_common** %26, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %10
  %36 = load %struct.ath_common*, %struct.ath_common** %26, align 8
  %37 = load i32, i32* @EEPROM, align 4
  %38 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %39 = call i32 @ath_dbg(%struct.ath_common* %36, i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %11, align 4
  br label %139

40:                                               ; preds = %10
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @AR9300_NUM_5G_CAL_PIERS, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.ath_common*, %struct.ath_common** %26, align 8
  %49 = load i32, i32* @EEPROM, align 4
  %50 = load i32, i32* @AR9300_NUM_5G_CAL_PIERS, align 4
  %51 = call i32 @ath_dbg(%struct.ath_common* %48, i32 %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 -1, i32* %11, align 4
  br label %139

52:                                               ; preds = %43
  %53 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %25, align 8
  %54 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %22, align 8
  %59 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %25, align 8
  %60 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %59, i32 0, i32 2
  %61 = load %struct.ar9300_cal_data_per_freq_op_loop**, %struct.ar9300_cal_data_per_freq_op_loop*** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %61, i64 %63
  %65 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %65, i64 %67
  store %struct.ar9300_cal_data_per_freq_op_loop* %68, %struct.ar9300_cal_data_per_freq_op_loop** %23, align 8
  store i32 0, i32* %24, align 4
  br label %95

69:                                               ; preds = %40
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @AR9300_NUM_2G_CAL_PIERS, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.ath_common*, %struct.ath_common** %26, align 8
  %75 = load i32, i32* @EEPROM, align 4
  %76 = load i32, i32* @AR9300_NUM_2G_CAL_PIERS, align 4
  %77 = call i32 @ath_dbg(%struct.ath_common* %74, i32 %75, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  store i32 -1, i32* %11, align 4
  br label %139

78:                                               ; preds = %69
  %79 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %25, align 8
  %80 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32* %84, i32** %22, align 8
  %85 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %25, align 8
  %86 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %85, i32 0, i32 0
  %87 = load %struct.ar9300_cal_data_per_freq_op_loop**, %struct.ar9300_cal_data_per_freq_op_loop*** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %87, i64 %89
  %91 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %91, i64 %93
  store %struct.ar9300_cal_data_per_freq_op_loop* %94, %struct.ar9300_cal_data_per_freq_op_loop** %23, align 8
  store i32 1, i32* %24, align 4
  br label %95

95:                                               ; preds = %78, %52
  %96 = load i32*, i32** %22, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %24, align 4
  %99 = call i32 @ath9k_hw_fbin2freq(i32 %97, i32 %98)
  %100 = load i32*, i32** %16, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %23, align 8
  %102 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %17, align 8
  store i32 %103, i32* %104, align 4
  %105 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %23, align 8
  %106 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %18, align 8
  store i32 %107, i32* %108, align 4
  %109 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %23, align 8
  %110 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %19, align 8
  store i32 %111, i32* %112, align 4
  %113 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %23, align 8
  %114 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %95
  %118 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %23, align 8
  %119 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @N2DBM(i32 %120)
  br label %123

122:                                              ; preds = %95
  br label %123

123:                                              ; preds = %122, %117
  %124 = phi i32 [ %121, %117 ], [ 0, %122 ]
  %125 = load i32*, i32** %20, align 8
  store i32 %124, i32* %125, align 4
  %126 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %23, align 8
  %127 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %23, align 8
  %132 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @N2DBM(i32 %133)
  br label %136

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %130
  %137 = phi i32 [ %134, %130 ], [ 0, %135 ]
  %138 = load i32*, i32** %21, align 8
  store i32 %137, i32* %138, align 4
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %136, %73, %47, %35
  %140 = load i32, i32* %11, align 4
  ret i32 %140
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_hw_fbin2freq(i32, i32) #1

declare dso_local i32 @N2DBM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
