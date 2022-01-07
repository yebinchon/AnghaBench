; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_enable_discovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_enable_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2p_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { i32 }
%struct.TYPE_3__ = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@P2PAPI_BSSCFG_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"P2P config device not available\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@BRCMF_P2P_STATUS_ENABLED = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"P2P config device already configured\0A\00", align 1
@P2PAPI_BSSCFG_PRIMARY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"p2p_disc\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"set p2p_disc error\0A\00", align 1
@WL_P2P_DISC_ST_SCAN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"unable to set WL_P2P_DISC_ST_SCAN\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"wsec\00", align 1
@AES_ENABLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"wsec error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_p2p_info*)* @brcmf_p2p_enable_discovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_enable_discovery(%struct.brcmf_p2p_info* %0) #0 {
  %2 = alloca %struct.brcmf_p2p_info*, align 8
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %5 = alloca i32, align 4
  store %struct.brcmf_p2p_info* %0, %struct.brcmf_p2p_info** %2, align 8
  %6 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %7 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  store %struct.brcmf_pub* %10, %struct.brcmf_pub** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @TRACE, align 4
  %12 = call i32 @brcmf_dbg(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %14 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* @P2PAPI_BSSCFG_DEVICE, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %18, align 8
  store %struct.brcmf_cfg80211_vif* %19, %struct.brcmf_cfg80211_vif** %4, align 8
  %20 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %21 = icmp ne %struct.brcmf_cfg80211_vif* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %24 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %88

27:                                               ; preds = %1
  %28 = load i32, i32* @BRCMF_P2P_STATUS_ENABLED, align 4
  %29 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %30 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @INFO, align 4
  %35 = call i32 @brcmf_dbg(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %88

36:                                               ; preds = %27
  %37 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %38 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* @P2PAPI_BSSCFG_PRIMARY, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %42, align 8
  store %struct.brcmf_cfg80211_vif* %43, %struct.brcmf_cfg80211_vif** %4, align 8
  %44 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %45 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @brcmf_fil_iovar_int_set(i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %52 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %88

53:                                               ; preds = %36
  %54 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %55 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* @P2PAPI_BSSCFG_DEVICE, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %59, align 8
  store %struct.brcmf_cfg80211_vif* %60, %struct.brcmf_cfg80211_vif** %4, align 8
  %61 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %62 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @WL_P2P_DISC_ST_SCAN, align 4
  %65 = call i32 @brcmf_p2p_set_discover_state(i32 %63, i32 %64, i32 0, i32 0)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %70 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %88

71:                                               ; preds = %53
  %72 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %73 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AES_ENABLED, align 4
  %76 = call i32 @brcmf_fil_bsscfg_int_set(i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  br label %88

83:                                               ; preds = %71
  %84 = load i32, i32* @BRCMF_P2P_STATUS_ENABLED, align 4
  %85 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %86 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %85, i32 0, i32 0
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  br label %88

88:                                               ; preds = %83, %79, %68, %50, %33, %22
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @brcmf_fil_iovar_int_set(i32, i8*, i32) #1

declare dso_local i32 @brcmf_p2p_set_discover_state(i32, i32, i32, i32) #1

declare dso_local i32 @brcmf_fil_bsscfg_int_set(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
