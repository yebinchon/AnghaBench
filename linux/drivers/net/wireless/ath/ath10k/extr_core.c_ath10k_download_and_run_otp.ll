; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_and_run_otp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_and_run_otp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"failed to download board data: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Not running otp, calibration will be incorrect (otp-data %pK otp_len %zd)!\0A\00", align 1
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"boot upload otp to 0x%x len %zd\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"could not write otp (%d)\0A\00", align 1
@ATH10K_PRE_CAL_MODE_DT = common dso_local global i64 0, align 8
@ATH10K_PRE_CAL_MODE_FILE = common dso_local global i64 0, align 8
@BMI_PARAM_FLASH_SECTION_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"could not execute otp (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"boot otp execute result %d\0A\00", align 1
@skip_otp = common dso_local global i64 0, align 8
@ATH10K_FW_FEATURE_IGNORE_OTP_RESULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"otp calibration failed: %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_download_and_run_otp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_download_and_run_otp(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ath10k_download_board_data(%struct.ath10k* %16, i32 %21, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ath10k_err(%struct.ath10k* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %152

35:                                               ; preds = %1
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %53 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %54 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %60 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ath10k_warn(%struct.ath10k* %52, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %64)
  store i32 0, i32* %2, align 4
  br label %152

66:                                               ; preds = %43
  %67 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %68 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %71 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %67, i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %75)
  %77 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %80 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %86 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ath10k_bmi_fast_download(%struct.ath10k* %77, i32 %78, i32 %84, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %66
  %95 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @ath10k_err(%struct.ath10k* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %152

99:                                               ; preds = %66
  %100 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %101 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ATH10K_PRE_CAL_MODE_DT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %107 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ATH10K_PRE_CAL_MODE_FILE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105, %99
  %112 = load i32, i32* @BMI_PARAM_FLASH_SECTION_ALL, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %105
  %114 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @ath10k_bmi_execute(%struct.ath10k* %114, i32 %115, i32 %116, i32* %4)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @ath10k_err(%struct.ath10k* %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %2, align 4
  br label %152

125:                                              ; preds = %113
  %126 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %127 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %126, i32 %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  %130 = load i64, i64* @skip_otp, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %151, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* @ATH10K_FW_FEATURE_IGNORE_OTP_RESULT, align 4
  %134 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %135 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %134, i32 0, i32 1
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @test_bit(i32 %133, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %132
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @ath10k_err(%struct.ath10k* %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %152

151:                                              ; preds = %142, %132, %125
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %145, %120, %94, %51, %30
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @ath10k_download_board_data(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, ...) #1

declare dso_local i32 @ath10k_bmi_fast_download(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i32 @ath10k_bmi_execute(%struct.ath10k*, i32, i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
