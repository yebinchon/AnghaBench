; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_stop_wait_next_action_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_stop_wait_next_action_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.brcmf_p2p_info }
%struct.brcmf_p2p_info = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.brcmf_if* }
%struct.brcmf_if = type { i32 }

@P2PAPI_BSSCFG_PRIMARY = common dso_local global i64 0, align 8
@BRCMF_P2P_STATUS_SENDING_ACT_FRAME = common dso_local global i32 0, align 4
@BRCMF_P2P_STATUS_ACTION_TX_COMPLETED = common dso_local global i32 0, align 4
@BRCMF_P2P_STATUS_ACTION_TX_NOACK = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"*** Wake UP ** abort actframe iovar\0A\00", align 1
@BRCMF_P2P_STATUS_WAITING_NEXT_AF_LISTEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"*** Wake UP ** abort listen for next af frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_cfg80211_info*)* @brcmf_p2p_stop_wait_next_action_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_p2p_stop_wait_next_action_frame(%struct.brcmf_cfg80211_info* %0) #0 {
  %2 = alloca %struct.brcmf_cfg80211_info*, align 8
  %3 = alloca %struct.brcmf_p2p_info*, align 8
  %4 = alloca %struct.brcmf_if*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %2, align 8
  %5 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %5, i32 0, i32 0
  store %struct.brcmf_p2p_info* %6, %struct.brcmf_p2p_info** %3, align 8
  %7 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %8 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load i64, i64* @P2PAPI_BSSCFG_PRIMARY, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.brcmf_if*, %struct.brcmf_if** %14, align 8
  store %struct.brcmf_if* %15, %struct.brcmf_if** %4, align 8
  %16 = load i32, i32* @BRCMF_P2P_STATUS_SENDING_ACT_FRAME, align 4
  %17 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %1
  %22 = load i32, i32* @BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, align 4
  %23 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %24 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @BRCMF_P2P_STATUS_ACTION_TX_NOACK, align 4
  %29 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %30 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27, %21
  %34 = load i32, i32* @TRACE, align 4
  %35 = call i32 @brcmf_dbg(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %37 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %42 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %43 = call i32 @brcmf_notify_escan_complete(%struct.brcmf_cfg80211_info* %41, %struct.brcmf_if* %42, i32 1, i32 1)
  br label %44

44:                                               ; preds = %40, %33
  br label %58

45:                                               ; preds = %27, %1
  %46 = load i32, i32* @BRCMF_P2P_STATUS_WAITING_NEXT_AF_LISTEN, align 4
  %47 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %48 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %47, i32 0, i32 0
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @TRACE, align 4
  %53 = call i32 @brcmf_dbg(i32 %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %55 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %56 = call i32 @brcmf_notify_escan_complete(%struct.brcmf_cfg80211_info* %54, %struct.brcmf_if* %55, i32 1, i32 1)
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %44
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_notify_escan_complete(%struct.brcmf_cfg80211_info*, %struct.brcmf_if*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
