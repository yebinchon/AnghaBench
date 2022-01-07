; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_dfs_status_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_dfs_status_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_dfs_status_ev_arg = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"failed to parse dfs status event: %d\0A\00", align 1
@ATH10K_DBG_REGULATORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"dfs status event received from fw: %d\0A\00", align 1
@WMI_HW_RADAR_DETECTED = common dso_local global i64 0, align 8
@WMI_RADAR_DETECTION_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_event_dfs_status_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_event_dfs_status_check(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wmi_dfs_status_ev_arg, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = bitcast %struct.wmi_dfs_status_ev_arg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @ath10k_wmi_pull_dfs_status(%struct.ath10k* %8, %struct.sk_buff* %9, %struct.wmi_dfs_status_ev_arg* %5)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ath10k_warn(%struct.ath10k* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = load i32, i32* @ATH10K_DBG_REGULATORY, align 4
  %20 = getelementptr inbounds %struct.wmi_dfs_status_ev_arg, %struct.wmi_dfs_status_ev_arg* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ath10k_dbg(%struct.ath10k* %18, i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = getelementptr inbounds %struct.wmi_dfs_status_ev_arg, %struct.wmi_dfs_status_ev_arg* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WMI_HW_RADAR_DETECTED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.wmi_dfs_status_ev_arg, %struct.wmi_dfs_status_ev_arg* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WMI_RADAR_DETECTION_FAIL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %17
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = call i32 @ath10k_radar_detected(%struct.ath10k* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @complete(i32* %38)
  br label %40

40:                                               ; preds = %35, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_wmi_pull_dfs_status(%struct.ath10k*, %struct.sk_buff*, %struct.wmi_dfs_status_ev_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64) #2

declare dso_local i32 @ath10k_radar_detected(%struct.ath10k*) #2

declare dso_local i32 @complete(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
