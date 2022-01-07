; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_stop_discovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_stop_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { %struct.wil_p2p_info }
%struct.wil_p2p_info = type { i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wil_p2p_stop_discovery(%struct.wil6210_vif* %0) #0 {
  %2 = alloca %struct.wil6210_vif*, align 8
  %3 = alloca %struct.wil_p2p_info*, align 8
  %4 = alloca i64, align 8
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %2, align 8
  %5 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %6 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %5, i32 0, i32 0
  store %struct.wil_p2p_info* %6, %struct.wil_p2p_info** %3, align 8
  %7 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %3, align 8
  %8 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %3, align 8
  %11 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %3, align 8
  %16 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %3, align 8
  %21 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  br label %28

22:                                               ; preds = %14
  %23 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %3, align 8
  %24 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %23, i32 0, i32 1
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %27 = call i32 @wmi_stop_discovery(%struct.wil6210_vif* %26)
  br label %28

28:                                               ; preds = %22, %19
  %29 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %3, align 8
  %30 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %1
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @wmi_stop_discovery(%struct.wil6210_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
