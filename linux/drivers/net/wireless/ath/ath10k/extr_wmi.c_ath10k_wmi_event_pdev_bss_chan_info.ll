; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_pdev_bss_chan_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_pdev_bss_chan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, %struct.survey_info*, %struct.TYPE_2__ }
%struct.survey_info = type { i32, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.wmi_pdev_bss_chan_info_event = type { i32, i32, i32, i32, i32, i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"wmi event pdev bss chan info:\0A freq: %d noise: %d cycle: busy %llu total %llu tx %llu rx %llu rx_bss %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"bss chan info: invalid frequency %d (idx %d out of bounds)\0A\00", align 1
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_RX = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_event_pdev_bss_chan_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_event_pdev_bss_chan_info(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wmi_pdev_bss_chan_info_event*, align 8
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %17 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %15, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.wmi_pdev_bss_chan_info_event*
  store %struct.wmi_pdev_bss_chan_info_event* %24, %struct.wmi_pdev_bss_chan_info_event** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 28
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EPROTO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %142

36:                                               ; preds = %2
  %37 = load %struct.wmi_pdev_bss_chan_info_event*, %struct.wmi_pdev_bss_chan_info_event** %6, align 8
  %38 = getelementptr inbounds %struct.wmi_pdev_bss_chan_info_event, %struct.wmi_pdev_bss_chan_info_event* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__le32_to_cpu(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.wmi_pdev_bss_chan_info_event*, %struct.wmi_pdev_bss_chan_info_event** %6, align 8
  %42 = getelementptr inbounds %struct.wmi_pdev_bss_chan_info_event, %struct.wmi_pdev_bss_chan_info_event* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__le32_to_cpu(i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load %struct.wmi_pdev_bss_chan_info_event*, %struct.wmi_pdev_bss_chan_info_event** %6, align 8
  %46 = getelementptr inbounds %struct.wmi_pdev_bss_chan_info_event, %struct.wmi_pdev_bss_chan_info_event* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__le64_to_cpu(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.wmi_pdev_bss_chan_info_event*, %struct.wmi_pdev_bss_chan_info_event** %6, align 8
  %50 = getelementptr inbounds %struct.wmi_pdev_bss_chan_info_event, %struct.wmi_pdev_bss_chan_info_event* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__le64_to_cpu(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.wmi_pdev_bss_chan_info_event*, %struct.wmi_pdev_bss_chan_info_event** %6, align 8
  %54 = getelementptr inbounds %struct.wmi_pdev_bss_chan_info_event, %struct.wmi_pdev_bss_chan_info_event* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__le64_to_cpu(i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.wmi_pdev_bss_chan_info_event*, %struct.wmi_pdev_bss_chan_info_event** %6, align 8
  %58 = getelementptr inbounds %struct.wmi_pdev_bss_chan_info_event, %struct.wmi_pdev_bss_chan_info_event* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @__le64_to_cpu(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.wmi_pdev_bss_chan_info_event*, %struct.wmi_pdev_bss_chan_info_event** %6, align 8
  %62 = getelementptr inbounds %struct.wmi_pdev_bss_chan_info_event, %struct.wmi_pdev_bss_chan_info_event* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__le64_to_cpu(i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %66 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @ath10k_dbg(%struct.ath10k* %65, i32 %66, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %76 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %75, i32 0, i32 1
  %77 = call i32 @spin_lock_bh(i32* %76)
  %78 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @freq_to_idx(%struct.ath10k* %78, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %83 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %82, i32 0, i32 2
  %84 = load %struct.survey_info*, %struct.survey_info** %83, align 8
  %85 = call i32 @ARRAY_SIZE(%struct.survey_info* %84)
  %86 = icmp sge i32 %81, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %36
  %88 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @ath10k_warn(%struct.ath10k* %88, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  br label %135

92:                                               ; preds = %36
  %93 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %94 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %93, i32 0, i32 2
  %95 = load %struct.survey_info*, %struct.survey_info** %94, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %95, i64 %97
  store %struct.survey_info* %98, %struct.survey_info** %7, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %101 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %15, align 4
  %104 = call i8* @div_u64(i32 %102, i32 %103)
  %105 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %106 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i8* @div_u64(i32 %107, i32 %108)
  %110 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %111 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %15, align 4
  %114 = call i8* @div_u64(i32 %112, i32 %113)
  %115 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %116 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i8* @div_u64(i32 %117, i32 %118)
  %120 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %121 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %123 = load i32, i32* @SURVEY_INFO_TIME, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @SURVEY_INFO_TIME_BUSY, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @SURVEY_INFO_TIME_RX, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @SURVEY_INFO_TIME_TX, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %132 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %92, %87
  %136 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %137 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %136, i32 0, i32 1
  %138 = call i32 @spin_unlock_bh(i32* %137)
  %139 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %140 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %139, i32 0, i32 0
  %141 = call i32 @complete(i32* %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %135, %33
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @__le64_to_cpu(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @freq_to_idx(%struct.ath10k*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.survey_info*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i8* @div_u64(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
