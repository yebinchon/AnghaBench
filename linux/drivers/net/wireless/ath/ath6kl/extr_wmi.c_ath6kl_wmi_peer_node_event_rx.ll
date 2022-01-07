; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_peer_node_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_peer_node_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.wmi_peer_node_event = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PEER_NODE_JOIN_EVENT = common dso_local global i64 0, align 8
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"joined node with mac addr: %pM\0A\00", align 1
@PEER_NODE_LEAVE_EVENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"left node with mac addr: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32)* @ath6kl_wmi_peer_node_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_peer_node_event_rx(%struct.wmi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_peer_node_event*, align 8
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %43

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.wmi_peer_node_event*
  store %struct.wmi_peer_node_event* %17, %struct.wmi_peer_node_event** %8, align 8
  %18 = load %struct.wmi_peer_node_event*, %struct.wmi_peer_node_event** %8, align 8
  %19 = getelementptr inbounds %struct.wmi_peer_node_event, %struct.wmi_peer_node_event* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PEER_NODE_JOIN_EVENT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %25 = load %struct.wmi_peer_node_event*, %struct.wmi_peer_node_event** %8, align 8
  %26 = getelementptr inbounds %struct.wmi_peer_node_event, %struct.wmi_peer_node_event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ath6kl_dbg(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %42

29:                                               ; preds = %15
  %30 = load %struct.wmi_peer_node_event*, %struct.wmi_peer_node_event** %8, align 8
  %31 = getelementptr inbounds %struct.wmi_peer_node_event, %struct.wmi_peer_node_event* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PEER_NODE_LEAVE_EVENT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %37 = load %struct.wmi_peer_node_event*, %struct.wmi_peer_node_event** %8, align 8
  %38 = getelementptr inbounds %struct.wmi_peer_node_event, %struct.wmi_peer_node_event* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ath6kl_dbg(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41, %23
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
