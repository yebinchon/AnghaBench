; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_notify_listen_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_notify_listen_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.brcmf_cfg80211_info* }
%struct.brcmf_cfg80211_info = type { %struct.brcmf_p2p_info }
%struct.brcmf_p2p_info = type { i32, i32, i32, i32 }
%struct.brcmf_event_msg = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMF_P2P_STATUS_DISCOVER_LISTEN = common dso_local global i32 0, align 4
@BRCMF_P2P_STATUS_WAITING_NEXT_AF_LISTEN = common dso_local global i32 0, align 4
@BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Listen DONE, wake up wait_next_af\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_p2p_notify_listen_complete(%struct.brcmf_if* %0, %struct.brcmf_event_msg* %1, i8* %2) #0 {
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca %struct.brcmf_event_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.brcmf_cfg80211_info*, align 8
  %8 = alloca %struct.brcmf_p2p_info*, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store %struct.brcmf_event_msg* %1, %struct.brcmf_event_msg** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  store %struct.brcmf_cfg80211_info* %13, %struct.brcmf_cfg80211_info** %7, align 8
  %14 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %14, i32 0, i32 0
  store %struct.brcmf_p2p_info* %15, %struct.brcmf_p2p_info** %8, align 8
  %16 = load i32, i32* @TRACE, align 4
  %17 = call i32 @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @BRCMF_P2P_STATUS_DISCOVER_LISTEN, align 4
  %19 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %20 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %19, i32 0, i32 3
  %21 = call i64 @test_and_clear_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %3
  %24 = load i32, i32* @BRCMF_P2P_STATUS_WAITING_NEXT_AF_LISTEN, align 4
  %25 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %26 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %25, i32 0, i32 3
  %27 = call i64 @test_and_clear_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* @BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME, align 4
  %31 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %32 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %31, i32 0, i32 3
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  %34 = load i32, i32* @INFO, align 4
  %35 = call i32 @brcmf_dbg(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %37 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %36, i32 0, i32 2
  %38 = call i32 @complete(i32* %37)
  br label %39

39:                                               ; preds = %29, %23
  %40 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %41 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %45 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %48 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @cfg80211_remain_on_channel_expired(i32* %43, i32 %46, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %39, %3
  ret i32 0
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @cfg80211_remain_on_channel_expired(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
