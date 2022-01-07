; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_is_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_is_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_vif = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.brcmf_event_msg = type { i64, i64, i32 }

@BRCMF_PROFILE_FWSUP_PSK = common dso_local global i64 0, align 8
@BRCMF_E_PSK_SUP = common dso_local global i64 0, align 8
@BRCMF_E_STATUS_FWSUP_COMPLETED = common dso_local global i64 0, align 8
@BRCMF_VIF_STATUS_EAP_SUCCESS = common dso_local global i32 0, align 4
@BRCMF_E_SET_SSID = common dso_local global i64 0, align 8
@BRCMF_E_STATUS_SUCCESS = common dso_local global i64 0, align 8
@CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Processing set ssid\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@BRCMF_VIF_STATUS_ASSOC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_vif*, %struct.brcmf_event_msg*)* @brcmf_is_linkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_is_linkup(%struct.brcmf_cfg80211_vif* %0, %struct.brcmf_event_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %5 = alloca %struct.brcmf_event_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.brcmf_cfg80211_vif* %0, %struct.brcmf_cfg80211_vif** %4, align 8
  store %struct.brcmf_event_msg* %1, %struct.brcmf_event_msg** %5, align 8
  %8 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %9 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %12 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BRCMF_PROFILE_FWSUP_PSK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @BRCMF_E_PSK_SUP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @BRCMF_E_STATUS_FWSUP_COMPLETED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @BRCMF_VIF_STATUS_EAP_SUCCESS, align 4
  %30 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %31 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %24, %20, %2
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @BRCMF_E_SET_SSID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @BRCMF_E_STATUS_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = load i32, i32* @CONN, align 4
  %43 = call i32 @brcmf_dbg(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %45 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %49 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32 %47, i32 %50, i32 %51)
  %53 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %54 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BRCMF_PROFILE_FWSUP_PSK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %87

60:                                               ; preds = %41
  %61 = load i32, i32* @BRCMF_VIF_STATUS_ASSOC_SUCCESS, align 4
  %62 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %63 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %62, i32 0, i32 0
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  br label %65

65:                                               ; preds = %60, %37, %33
  %66 = load i32, i32* @BRCMF_VIF_STATUS_EAP_SUCCESS, align 4
  %67 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %68 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %67, i32 0, i32 0
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load i32, i32* @BRCMF_VIF_STATUS_ASSOC_SUCCESS, align 4
  %73 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %74 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %73, i32 0, i32 0
  %75 = call i64 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i32, i32* @BRCMF_VIF_STATUS_EAP_SUCCESS, align 4
  %79 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %80 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %79, i32 0, i32 0
  %81 = call i32 @clear_bit(i32 %78, i32* %80)
  %82 = load i32, i32* @BRCMF_VIF_STATUS_ASSOC_SUCCESS, align 4
  %83 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %84 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %83, i32 0, i32 0
  %85 = call i32 @clear_bit(i32 %82, i32* %84)
  store i32 1, i32* %3, align 4
  br label %87

86:                                               ; preds = %71, %65
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %77, %59
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
