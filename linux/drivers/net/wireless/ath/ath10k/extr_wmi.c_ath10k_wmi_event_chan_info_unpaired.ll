; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_chan_info_unpaired.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_chan_info_unpaired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.survey_info* }
%struct.survey_info = type { i32, i32, i32, i32 }
%struct.chan_info_params = type { i32, i32, i32, i32, i32, i32 }

@WMI_CHAN_INFO_FLAG_COMPLETE = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"chan info report completed\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"chan info: invalid frequency %d (idx %d out of bounds)\0A\00", align 1
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.chan_info_params*)* @ath10k_wmi_event_chan_info_unpaired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_event_chan_info_unpaired(%struct.ath10k* %0, %struct.chan_info_params* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.chan_info_params*, align 8
  %5 = alloca %struct.survey_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.chan_info_params* %1, %struct.chan_info_params** %4, align 8
  %7 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %8 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WMI_CHAN_INFO_FLAG_COMPLETE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %16 = call i32 @ath10k_dbg(%struct.ath10k* %14, i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %20 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @freq_to_idx(%struct.ath10k* %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 0
  %26 = load %struct.survey_info*, %struct.survey_info** %25, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.survey_info* %26)
  %28 = icmp sge i32 %23, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %32 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ath10k_warn(%struct.ath10k* %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  br label %85

36:                                               ; preds = %17
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 0
  %39 = load %struct.survey_info*, %struct.survey_info** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %39, i64 %41
  store %struct.survey_info* %42, %struct.survey_info** %5, align 8
  %43 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %44 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %85

48:                                               ; preds = %36
  %49 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %50 = call i32 @memset(%struct.survey_info* %49, i32 0, i32 16)
  %51 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %52 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %55 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %57 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %60 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %58, %61
  %63 = sdiv i32 %62, 1000
  %64 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %65 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %67 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.chan_info_params*, %struct.chan_info_params** %4, align 8
  %70 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %68, %71
  %73 = sdiv i32 %72, 1000
  %74 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %75 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %77 = load i32, i32* @SURVEY_INFO_TIME, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SURVEY_INFO_TIME_BUSY, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %82 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %48, %47, %29, %13
  ret void
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @freq_to_idx(%struct.ath10k*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.survey_info*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.survey_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
