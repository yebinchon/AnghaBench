; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_echo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_echo_ev_arg = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to parse echo: %d\0A\00", align 1
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"wmi event echo value 0x%08x\0A\00", align 1
@ATH10K_WMI_BARRIER_ECHO_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_event_echo(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wmi_echo_ev_arg, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = bitcast %struct.wmi_echo_ev_arg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @ath10k_wmi_pull_echo_ev(%struct.ath10k* %8, %struct.sk_buff* %9, %struct.wmi_echo_ev_arg* %5)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ath10k_warn(%struct.ath10k* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %20 = getelementptr inbounds %struct.wmi_echo_ev_arg, %struct.wmi_echo_ev_arg* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le32_to_cpu(i32 %21)
  %23 = call i32 @ath10k_dbg(%struct.ath10k* %18, i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = getelementptr inbounds %struct.wmi_echo_ev_arg, %struct.wmi_echo_ev_arg* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le32_to_cpu(i32 %25)
  %27 = load i64, i64* @ATH10K_WMI_BARRIER_ECHO_ID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @complete(i32* %32)
  br label %34

34:                                               ; preds = %13, %29, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_wmi_pull_echo_ev(%struct.ath10k*, %struct.sk_buff*, %struct.wmi_echo_ev_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64) #2

declare dso_local i64 @le32_to_cpu(i32) #2

declare dso_local i32 @complete(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
