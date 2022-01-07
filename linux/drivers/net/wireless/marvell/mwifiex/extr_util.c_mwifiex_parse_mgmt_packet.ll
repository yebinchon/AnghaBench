; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_parse_mgmt_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_parse_mgmt_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.rxpd = type { i32, i32 }
%struct.ieee80211_hdr = type { i32*, i32 }

@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4
@WLAN_PUB_ACTION_TDLS_DISCOVER_RES = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"TDLS discovery response %pM nf=%d, snr=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"drop BACK action frames\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"unknown public action frame category %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"unknown mgmt frame subtype %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32*, i32, %struct.rxpd*)* @mwifiex_parse_mgmt_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_parse_mgmt_packet(%struct.mwifiex_private* %0, i32* %1, i32 %2, %struct.rxpd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rxpd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.rxpd* %3, %struct.rxpd** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %17, %struct.ieee80211_hdr** %14, align 8
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %78 [
    i32 130, label %25
  ]

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 16
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %70 [
    i32 128, label %30
    i32 129, label %64
  ]

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 16
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @WLAN_PUB_ACTION_TDLS_DISCOVER_RES, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %30
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %13, align 8
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @INFO, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load %struct.rxpd*, %struct.rxpd** %9, align 8
  %48 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rxpd*, %struct.rxpd** %9, align 8
  %51 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %44, i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %46, i32 %49, i32 %52)
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load %struct.rxpd*, %struct.rxpd** %9, align 8
  %57 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rxpd*, %struct.rxpd** %9, align 8
  %60 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mwifiex_auto_tdls_update_peer_signal(%struct.mwifiex_private* %54, i32* %55, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %38, %30
  br label %77

64:                                               ; preds = %25
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @INFO, align 4
  %69 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %67, i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %86

70:                                               ; preds = %25
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @INFO, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %73, i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %70, %63
  br label %85

78:                                               ; preds = %4
  %79 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %80 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @INFO, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %81, i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  store i32 0, i32* %5, align 4
  br label %86

85:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %78, %64
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_auto_tdls_update_peer_signal(%struct.mwifiex_private*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
