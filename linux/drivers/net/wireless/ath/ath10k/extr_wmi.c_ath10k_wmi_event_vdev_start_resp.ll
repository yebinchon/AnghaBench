; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_vdev_start_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_vdev_start_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_vdev_start_ev_arg = type { i32 }

@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WMI_VDEV_START_RESP_EVENTID\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to parse vdev start event: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"vdev-start-response reports status error: %d (%s)\0A\00", align 1
@WMI_VDEV_START_CHAN_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"chan-invalid\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_event_vdev_start_resp(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wmi_vdev_start_ev_arg, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = bitcast %struct.wmi_vdev_start_ev_arg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %11 = call i32 @ath10k_dbg(%struct.ath10k* %9, i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @ath10k_wmi_pull_vdev_start(%struct.ath10k* %14, %struct.sk_buff* %15, %struct.wmi_vdev_start_ev_arg* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %47

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.wmi_vdev_start_ev_arg, %struct.wmi_vdev_start_ev_arg* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__le32_to_cpu(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @WARN_ON_ONCE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @WMI_VDEV_START_CHAN_INVALID, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %41 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %35, i8* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %33, %26
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %49 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %48, i32 0, i32 1
  %50 = call i32 @complete(i32* %49)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #2

declare dso_local i32 @ath10k_wmi_pull_vdev_start(%struct.ath10k*, %struct.sk_buff*, %struct.wmi_vdev_start_ev_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #2

declare dso_local i32 @__le32_to_cpu(i32) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @complete(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
