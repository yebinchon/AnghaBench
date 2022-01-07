; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_notify_action_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_notify_action_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcmf_cfg80211_info* }
%struct.brcmf_cfg80211_info = type { %struct.brcmf_p2p_info }
%struct.brcmf_p2p_info = type { i32, i32, i32 }
%struct.brcmf_event_msg = type { i64, i64 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Enter: event %s, status=%d\0A\00", align 1
@BRCMF_E_ACTION_FRAME_OFF_CHAN_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"ACTION_FRAME_OFF_CHAN_COMPLETE\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ACTION_FRAME_COMPLETE\00", align 1
@BRCMF_P2P_STATUS_SENDING_ACT_FRAME = common dso_local global i32 0, align 4
@BRCMF_E_ACTION_FRAME_COMPLETE = common dso_local global i64 0, align 8
@BRCMF_E_STATUS_SUCCESS = common dso_local global i64 0, align 8
@BRCMF_P2P_STATUS_ACTION_TX_COMPLETED = common dso_local global i32 0, align 4
@BRCMF_P2P_STATUS_ACTION_TX_NOACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_p2p_notify_action_tx_complete(%struct.brcmf_if* %0, %struct.brcmf_event_msg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.brcmf_event_msg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.brcmf_cfg80211_info*, align 8
  %9 = alloca %struct.brcmf_p2p_info*, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %5, align 8
  store %struct.brcmf_event_msg* %1, %struct.brcmf_event_msg** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %11 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %13, align 8
  store %struct.brcmf_cfg80211_info* %14, %struct.brcmf_cfg80211_info** %8, align 8
  %15 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %15, i32 0, i32 0
  store %struct.brcmf_p2p_info* %16, %struct.brcmf_p2p_info** %9, align 8
  %17 = load i32, i32* @INFO, align 4
  %18 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %19 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BRCMF_E_ACTION_FRAME_OFF_CHAN_COMPLETE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)
  %25 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %26 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @brcmf_dbg(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %24, i64 %27)
  %29 = load i32, i32* @BRCMF_P2P_STATUS_SENDING_ACT_FRAME, align 4
  %30 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %31 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %30, i32 0, i32 1
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

35:                                               ; preds = %3
  %36 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %37 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BRCMF_E_ACTION_FRAME_COMPLETE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %43 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BRCMF_E_STATUS_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load i32, i32* @BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, align 4
  %49 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %50 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %49, i32 0, i32 1
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  %52 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %53 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %58 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %57, i32 0, i32 0
  %59 = call i32 @complete(i32* %58)
  br label %60

60:                                               ; preds = %56, %47
  br label %68

61:                                               ; preds = %41
  %62 = load i32, i32* @BRCMF_P2P_STATUS_ACTION_TX_NOACK, align 4
  %63 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %64 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %63, i32 0, i32 1
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %67 = call i32 @brcmf_p2p_stop_wait_next_action_frame(%struct.brcmf_cfg80211_info* %66)
  br label %68

68:                                               ; preds = %61, %60
  br label %73

69:                                               ; preds = %35
  %70 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %71 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %70, i32 0, i32 0
  %72 = call i32 @complete(i32* %71)
  br label %73

73:                                               ; preds = %69, %68
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %34
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i8*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @brcmf_p2p_stop_wait_next_action_frame(%struct.brcmf_cfg80211_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
