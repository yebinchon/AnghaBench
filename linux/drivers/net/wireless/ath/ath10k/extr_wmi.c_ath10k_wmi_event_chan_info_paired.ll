; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_chan_info_paired.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_chan_info_paired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, i32, %struct.survey_info* }
%struct.survey_info = type { i32, i32 }
%struct.chan_info_params = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"chan info: invalid frequency %d (idx %d out of bounds)\0A\00", align 1
@WMI_CHAN_INFO_FLAG_COMPLETE = common dso_local global i32 0, align 4
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@WMI_CHAN_INFO_FLAG_PRE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.chan_info_params*)* @ath10k_wmi_event_chan_info_paired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_event_chan_info_paired(%struct.ath10k* %0, %struct.chan_info_params* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.chan_info_params*, align 8
  %5 = alloca %struct.survey_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.chan_info_params* %1, %struct.chan_info_params** %4, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %9 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @freq_to_idx(%struct.ath10k* %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 3
  %15 = load %struct.survey_info*, %struct.survey_info** %14, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.survey_info* %15)
  %17 = icmp sge i32 %12, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %21 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ath10k_warn(%struct.ath10k* %19, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  br label %91

25:                                               ; preds = %2
  %26 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %27 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WMI_CHAN_INFO_FLAG_COMPLETE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %25
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 3
  %40 = load %struct.survey_info*, %struct.survey_info** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %40, i64 %42
  store %struct.survey_info* %43, %struct.survey_info** %5, align 8
  %44 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %45 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %48 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %50 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %51 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %53 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %54 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %55 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %58 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %61 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %64 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ath10k_hw_fill_survey_time(%struct.ath10k* %52, %struct.survey_info* %53, i32 %56, i32 %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %37, %32
  %68 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %69 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %73

70:                                               ; preds = %25
  %71 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %72 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %75 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @WMI_CHAN_INFO_FLAG_PRE_COMPLETE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %73
  %81 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %82 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %85 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %87 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %90 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %18, %80, %73
  ret void
}

declare dso_local i32 @freq_to_idx(%struct.ath10k*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.survey_info*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_hw_fill_survey_time(%struct.ath10k*, %struct.survey_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
