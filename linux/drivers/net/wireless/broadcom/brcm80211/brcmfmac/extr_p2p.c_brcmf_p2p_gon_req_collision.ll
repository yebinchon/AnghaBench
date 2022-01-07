; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_gon_req_collision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_gon_req_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2p_info = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, %struct.brcmf_cfg80211_info* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.brcmf_if* }
%struct.brcmf_if = type { i32 }
%struct.brcmf_cfg80211_info = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"GO Negotiation Request COLLISION !!!\0A\00", align 1
@P2PAPI_BSSCFG_DEVICE = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Block transmit gon req !!!\0A\00", align 1
@BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Drop received gon req !!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_p2p_info*, i32*)* @brcmf_p2p_gon_req_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_gon_req_collision(%struct.brcmf_p2p_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_p2p_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.brcmf_cfg80211_info*, align 8
  %7 = alloca %struct.brcmf_if*, align 8
  store %struct.brcmf_p2p_info* %0, %struct.brcmf_p2p_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %9 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %8, i32 0, i32 5
  %10 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  store %struct.brcmf_cfg80211_info* %10, %struct.brcmf_cfg80211_info** %6, align 8
  %11 = load i32, i32* @TRACE, align 4
  %12 = call i32 @brcmf_dbg(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME, align 4
  %14 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %15 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %20 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %71

24:                                               ; preds = %18
  %25 = load i32, i32* @TRACE, align 4
  %26 = call i32 @brcmf_dbg(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %28 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i64, i64* @P2PAPI_BSSCFG_DEVICE, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.brcmf_if*, %struct.brcmf_if** %34, align 8
  store %struct.brcmf_if* %35, %struct.brcmf_if** %7, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %38 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i64 @memcmp(i32* %36, i32 %39, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %24
  %44 = load i32, i32* @INFO, align 4
  %45 = call i32 @brcmf_dbg(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %47 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, align 4
  %49 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %50 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %49, i32 0, i32 1
  %51 = call i64 @test_and_clear_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %55 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @complete(i32* %56)
  br label %58

58:                                               ; preds = %53, %43
  %59 = load i32, i32* @BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME, align 4
  %60 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %61 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %60, i32 0, i32 1
  %62 = call i64 @test_and_clear_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %66 = call i32 @brcmf_p2p_stop_wait_next_action_frame(%struct.brcmf_cfg80211_info* %65)
  br label %67

67:                                               ; preds = %64, %58
  store i32 0, i32* %3, align 4
  br label %71

68:                                               ; preds = %24
  %69 = load i32, i32* @INFO, align 4
  %70 = call i32 @brcmf_dbg(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %67, %23
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @brcmf_p2p_stop_wait_next_action_frame(%struct.brcmf_cfg80211_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
