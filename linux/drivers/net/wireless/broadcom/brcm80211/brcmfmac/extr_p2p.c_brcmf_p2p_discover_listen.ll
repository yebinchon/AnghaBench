; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_discover_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_discover_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2p_info = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.brcmf_pub* }
%struct.TYPE_5__ = type { i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type { i32, i32, i32 }
%struct.brcmf_pub = type { i32 }
%struct.TYPE_4__ = type { %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { i32 }

@P2PAPI_BSSCFG_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Discovery is not set, so we have nothing to do\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@BRCMF_P2P_STATUS_DISCOVER_LISTEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Previous LISTEN is not completed yet\0A\00", align 1
@BRCMU_CHAN_BW_20 = common dso_local global i32 0, align 4
@WL_P2P_DISC_ST_LISTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_p2p_info*, i32, i64)* @brcmf_p2p_discover_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_discover_listen(%struct.brcmf_p2p_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.brcmf_p2p_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %9 = alloca %struct.brcmu_chan, align 4
  %10 = alloca i32, align 4
  store %struct.brcmf_p2p_info* %0, %struct.brcmf_p2p_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %12 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %14, align 8
  store %struct.brcmf_pub* %15, %struct.brcmf_pub** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %17 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* @P2PAPI_BSSCFG_DEVICE, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %21, align 8
  store %struct.brcmf_cfg80211_vif* %22, %struct.brcmf_cfg80211_vif** %8, align 8
  %23 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %8, align 8
  %24 = icmp ne %struct.brcmf_cfg80211_vif* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %27 = call i32 @bphy_err(%struct.brcmf_pub* %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %72

30:                                               ; preds = %3
  %31 = load i32, i32* @BRCMF_P2P_STATUS_DISCOVER_LISTEN, align 4
  %32 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %33 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %38 = call i32 @bphy_err(%struct.brcmf_pub* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %72

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %9, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @BRCMU_CHAN_BW_20, align 4
  %43 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %9, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %45 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %48, align 8
  %50 = call i32 %49(%struct.brcmu_chan* %9)
  %51 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %8, align 8
  %52 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @WL_P2P_DISC_ST_LISTEN, align 4
  %55 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %6, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @brcmf_p2p_set_discover_state(i32 %53, i32 %54, i32 %56, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %39
  %63 = load i32, i32* @BRCMF_P2P_STATUS_DISCOVER_LISTEN, align 4
  %64 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %65 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %64, i32 0, i32 1
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  %67 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %4, align 8
  %68 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %62, %39
  br label %72

72:                                               ; preds = %71, %36, %25
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @brcmf_p2p_set_discover_state(i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
