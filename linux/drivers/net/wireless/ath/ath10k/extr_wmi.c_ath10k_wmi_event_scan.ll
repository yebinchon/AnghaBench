; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_scan_ev_arg = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to parse scan event: %d\0A\00", align 1
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"scan event %s type %d reason %d freq %d req_id %d scan_id %d vdev_id %d state %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"received scan start failure event\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_event_scan(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wmi_scan_ev_arg, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = bitcast %struct.wmi_scan_ev_arg* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @ath10k_wmi_pull_scan(%struct.ath10k* %15, %struct.sk_buff* %16, %struct.wmi_scan_ev_arg* %6)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %3, align 4
  br label %95

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.wmi_scan_ev_arg, %struct.wmi_scan_ev_arg* %6, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @__le32_to_cpu(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = getelementptr inbounds %struct.wmi_scan_ev_arg, %struct.wmi_scan_ev_arg* %6, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @__le32_to_cpu(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = getelementptr inbounds %struct.wmi_scan_ev_arg, %struct.wmi_scan_ev_arg* %6, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @__le32_to_cpu(i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = getelementptr inbounds %struct.wmi_scan_ev_arg, %struct.wmi_scan_ev_arg* %6, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @__le32_to_cpu(i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = getelementptr inbounds %struct.wmi_scan_ev_arg, %struct.wmi_scan_ev_arg* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @__le32_to_cpu(i32 %41)
  store i8* %42, i8** %11, align 8
  %43 = getelementptr inbounds %struct.wmi_scan_ev_arg, %struct.wmi_scan_ev_arg* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @__le32_to_cpu(i32 %44)
  store i8* %45, i8** %12, align 8
  %46 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 0
  %48 = call i32 @spin_lock_bh(i32* %47)
  %49 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %50 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ath10k_wmi_event_scan_type_str(i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %61 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ath10k_scan_state_str(i32 %63)
  %65 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %66 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ath10k_dbg(%struct.ath10k* %49, i32 %50, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i8* %56, i8* %57, i8* %58, i8* %59, i32 %64, i32 %68)
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %90 [
    i32 129, label %71
    i32 135, label %74
    i32 136, label %77
    i32 133, label %80
    i32 128, label %84
    i32 134, label %89
    i32 131, label %89
    i32 130, label %89
    i32 132, label %89
  ]

71:                                               ; preds = %25
  %72 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %73 = call i32 @ath10k_wmi_event_scan_started(%struct.ath10k* %72)
  br label %91

74:                                               ; preds = %25
  %75 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %76 = call i32 @ath10k_wmi_event_scan_completed(%struct.ath10k* %75)
  br label %91

77:                                               ; preds = %25
  %78 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %79 = call i32 @ath10k_wmi_event_scan_bss_chan(%struct.ath10k* %78)
  br label %91

80:                                               ; preds = %25
  %81 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @ath10k_wmi_event_scan_foreign_chan(%struct.ath10k* %81, i8* %82)
  br label %91

84:                                               ; preds = %25
  %85 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %86 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %88 = call i32 @ath10k_wmi_event_scan_start_failed(%struct.ath10k* %87)
  br label %91

89:                                               ; preds = %25, %25, %25, %25
  br label %90

90:                                               ; preds = %25, %89
  br label %91

91:                                               ; preds = %90, %84, %80, %77, %74, %71
  %92 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %93 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock_bh(i32* %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %20
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_wmi_pull_scan(%struct.ath10k*, %struct.sk_buff*, %struct.wmi_scan_ev_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #2

declare dso_local i8* @__le32_to_cpu(i32) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @ath10k_wmi_event_scan_type_str(i32, i32) #2

declare dso_local i32 @ath10k_scan_state_str(i32) #2

declare dso_local i32 @ath10k_wmi_event_scan_started(%struct.ath10k*) #2

declare dso_local i32 @ath10k_wmi_event_scan_completed(%struct.ath10k*) #2

declare dso_local i32 @ath10k_wmi_event_scan_bss_chan(%struct.ath10k*) #2

declare dso_local i32 @ath10k_wmi_event_scan_foreign_chan(%struct.ath10k*, i8*) #2

declare dso_local i32 @ath10k_wmi_event_scan_start_failed(%struct.ath10k*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
