; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_adhoc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_adhoc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cfg80211_ssid = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"info: Adhoc Channel = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"info: curr_bss_params.channel = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"info: curr_bss_params.band = %d\0A\00", align 1
@BAND_AAC = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_AD_HOC_START = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_adhoc_start(%struct.mwifiex_private* %0, %struct.cfg80211_ssid* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.cfg80211_ssid*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.cfg80211_ssid* %1, %struct.cfg80211_ssid** %4, align 8
  %5 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %6 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = load i32, i32* @INFO, align 4
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mwifiex_dbg(%struct.TYPE_6__* %7, i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load i32, i32* @INFO, align 4
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %18 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mwifiex_dbg(%struct.TYPE_6__* %15, i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* @INFO, align 4
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mwifiex_dbg(%struct.TYPE_6__* %25, i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ISSUPP_11ACENABLED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %2
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BAND_AAC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %50 = call i32 @mwifiex_set_11ac_ba_params(%struct.mwifiex_private* %49)
  br label %54

51:                                               ; preds = %39, %2
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %53 = call i32 @mwifiex_set_ba_params(%struct.mwifiex_private* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %56 = load i32, i32* @HostCmd_CMD_802_11_AD_HOC_START, align 4
  %57 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %58 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %4, align 8
  %59 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %55, i32 %56, i32 %57, i32 0, %struct.cfg80211_ssid* %58, i32 1)
  ret i32 %59
}

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i64 @ISSUPP_11ACENABLED(i32) #1

declare dso_local i32 @mwifiex_set_11ac_ba_params(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_set_ba_params(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.cfg80211_ssid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
