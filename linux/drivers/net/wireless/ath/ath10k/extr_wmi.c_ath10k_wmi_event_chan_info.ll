; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_chan_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_chan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.chan_info_params = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wmi_ch_info_ev_arg = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to parse chan info event: %d\0A\00", align 1
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"chan info err_code %d freq %d cmd_flags %d noise_floor %d rx_clear_count %d cycle_count %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"received chan info event without a scan request, ignoring\0A\00", align 1
@ATH10K_FW_FEATURE_SINGLE_CHAN_INFO_PER_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_event_chan_info(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.chan_info_params, align 8
  %6 = alloca %struct.wmi_ch_info_ev_arg, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = bitcast %struct.wmi_ch_info_ev_arg* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 28, i1 false)
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @ath10k_wmi_pull_ch_info(%struct.ath10k* %9, %struct.sk_buff* %10, %struct.wmi_ch_info_ev_arg* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %94

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %6, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @__le32_to_cpu(i32 %20)
  %22 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 5
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %6, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @__le32_to_cpu(i32 %24)
  %26 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 4
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %6, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @__le32_to_cpu(i32 %28)
  %30 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %6, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @__le32_to_cpu(i32 %32)
  %34 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %6, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @__le32_to_cpu(i32 %36)
  %38 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @__le32_to_cpu(i32 %40)
  %42 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @__le32_to_cpu(i32 %44)
  %46 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 6
  store i8* %45, i8** %46, align 8
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %49 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds %struct.chan_info_params, %struct.chan_info_params* %5, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @ath10k_dbg(%struct.ath10k* %47, i32 %48, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %52, i8* %54, i8* %56, i8* %58, i8* %60)
  %62 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %63 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %62, i32 0, i32 0
  %64 = call i32 @spin_lock_bh(i32* %63)
  %65 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %66 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %73 [
    i32 130, label %69
    i32 128, label %69
    i32 129, label %72
    i32 131, label %72
  ]

69:                                               ; preds = %18, %18
  %70 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %71 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %70, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %90

72:                                               ; preds = %18, %18
  br label %73

73:                                               ; preds = %18, %72
  %74 = load i32, i32* @ATH10K_FW_FEATURE_SINGLE_CHAN_INFO_PER_CHANNEL, align 4
  %75 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %76 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @test_bit(i32 %74, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %85 = call i32 @ath10k_wmi_event_chan_info_unpaired(%struct.ath10k* %84, %struct.chan_info_params* %5)
  br label %89

86:                                               ; preds = %73
  %87 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %88 = call i32 @ath10k_wmi_event_chan_info_paired(%struct.ath10k* %87, %struct.chan_info_params* %5)
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %69
  %91 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %92 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock_bh(i32* %92)
  br label %94

94:                                               ; preds = %90, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_wmi_pull_ch_info(%struct.ath10k*, %struct.sk_buff*, %struct.wmi_ch_info_ev_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #2

declare dso_local i8* @__le32_to_cpu(i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i64 @test_bit(i32, i32) #2

declare dso_local i32 @ath10k_wmi_event_chan_info_unpaired(%struct.ath10k*, %struct.chan_info_params*) #2

declare dso_local i32 @ath10k_wmi_event_chan_info_paired(%struct.ath10k*, %struct.chan_info_params*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
