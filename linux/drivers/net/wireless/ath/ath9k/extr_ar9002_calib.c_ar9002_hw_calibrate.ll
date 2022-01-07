; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ath9k_cal_list*, %struct.TYPE_2__* }
%struct.ath9k_cal_list = type { i64, %struct.ath9k_cal_list* }
%struct.TYPE_2__ = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NF = common dso_local global i32 0, align 4
@NFCAL_PENDING = common dso_local global i32 0, align 4
@CAL_RUNNING = common dso_local global i64 0, align 8
@CAL_WAITING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*, i32, i32)* @ar9002_hw_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9002_hw_calibrate(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath9k_cal_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %6, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 1
  %17 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %16, align 8
  store %struct.ath9k_cal_list* %17, %struct.ath9k_cal_list** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %19 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %20 = call i32 @REG_READ(%struct.ath_hw* %18, i32 %19)
  %21 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load i32, i32* @NFCAL_PENDING, align 4
  %33 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @test_bit(i32 %32, i32* %36)
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %31, %4
  %39 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %40 = icmp ne %struct.ath9k_cal_list* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %43 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CAL_RUNNING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %49 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CAL_WAITING, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi i1 [ true, %41 ], [ %52, %47 ]
  br label %55

55:                                               ; preds = %53, %38
  %56 = phi i1 [ false, %38 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %60
  %64 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %65 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %68 = call i32 @ar9002_hw_per_calibration(%struct.ath_hw* %64, %struct.ath9k_channel* %65, i32 %66, %struct.ath9k_cal_list* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %125

71:                                               ; preds = %63
  %72 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %73 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %72, i32 0, i32 1
  %74 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %73, align 8
  store %struct.ath9k_cal_list* %74, %struct.ath9k_cal_list** %10, align 8
  %75 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 1
  store %struct.ath9k_cal_list* %74, %struct.ath9k_cal_list** %76, align 8
  %77 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %78 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CAL_WAITING, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %84 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %85 = call i32 @ath9k_hw_reset_calibration(%struct.ath_hw* %83, %struct.ath9k_cal_list* %84)
  br label %86

86:                                               ; preds = %82, %71
  store i32 0, i32* %5, align 4
  br label %125

87:                                               ; preds = %60, %55
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %120

93:                                               ; preds = %90, %87
  %94 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %95 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %96 = call i64 @ath9k_hw_getnf(%struct.ath_hw* %94, %struct.ath9k_channel* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %100 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %101 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ath9k_hw_loadnf(%struct.ath_hw* %99, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %5, align 4
  br label %125

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %93
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %114 = call i32 @ath9k_hw_start_nfcal(%struct.ath_hw* %113, i32 0)
  %115 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %116 = call i32 @ar9002_hw_pa_cal(%struct.ath_hw* %115, i32 0)
  %117 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %118 = call i32 @ar9002_hw_olc_temp_compensation(%struct.ath_hw* %117)
  br label %119

119:                                              ; preds = %112, %109
  br label %120

120:                                              ; preds = %119, %90
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %120, %106, %86, %70
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ar9002_hw_per_calibration(%struct.ath_hw*, %struct.ath9k_channel*, i32, %struct.ath9k_cal_list*) #1

declare dso_local i32 @ath9k_hw_reset_calibration(%struct.ath_hw*, %struct.ath9k_cal_list*) #1

declare dso_local i64 @ath9k_hw_getnf(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_loadnf(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_start_nfcal(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9002_hw_pa_cal(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9002_hw_olc_temp_compensation(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
