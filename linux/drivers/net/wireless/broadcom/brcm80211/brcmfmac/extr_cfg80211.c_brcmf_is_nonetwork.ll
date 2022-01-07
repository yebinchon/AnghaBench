; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_is_nonetwork.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_is_nonetwork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i32 }
%struct.brcmf_event_msg = type { i64, i64, i32 }

@BRCMF_E_LINK = common dso_local global i64 0, align 8
@BRCMF_E_STATUS_NO_NETWORKS = common dso_local global i64 0, align 8
@CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Processing Link %s & no network found\0A\00", align 1
@BRCMF_EVENT_MSG_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@BRCMF_E_SET_SSID = common dso_local global i64 0, align 8
@BRCMF_E_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Processing connecting & no network found\0A\00", align 1
@BRCMF_E_PSK_SUP = common dso_local global i64 0, align 8
@BRCMF_E_STATUS_FWSUP_COMPLETED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Processing failed supplicant state: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*, %struct.brcmf_event_msg*)* @brcmf_is_nonetwork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_is_nonetwork(%struct.brcmf_cfg80211_info* %0, %struct.brcmf_event_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_cfg80211_info*, align 8
  %5 = alloca %struct.brcmf_event_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %4, align 8
  store %struct.brcmf_event_msg* %1, %struct.brcmf_event_msg** %5, align 8
  %8 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %9 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %12 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @BRCMF_E_LINK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @BRCMF_E_STATUS_NO_NETWORKS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i32, i32* @CONN, align 4
  %23 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %24 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BRCMF_EVENT_MSG_LINK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 1, i32* %3, align 4
  br label %56

32:                                               ; preds = %17, %2
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @BRCMF_E_SET_SSID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @BRCMF_E_STATUS_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @CONN, align 4
  %42 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %56

43:                                               ; preds = %36, %32
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @BRCMF_E_PSK_SUP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @BRCMF_E_STATUS_FWSUP_COMPLETED, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @CONN, align 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %47, %43
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %51, %40, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
