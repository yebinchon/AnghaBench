; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_config_uap_11d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_config_uap_11d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.cfg80211_beacon_data = type { i32, i32 }

@WLAN_EID_COUNTRY = common dso_local global i32 0, align 4
@ENABLE_11D = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_SNMP_MIB = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@DOT11D_I = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"11D: failed to enable 11D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_config_uap_11d(%struct.mwifiex_private* %0, %struct.cfg80211_beacon_data* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.cfg80211_beacon_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.cfg80211_beacon_data* %1, %struct.cfg80211_beacon_data** %4, align 8
  %7 = load i32, i32* @WLAN_EID_COUNTRY, align 4
  %8 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %9 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %12 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @cfg80211_find_ie(i32 %7, i32 %10, i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load i32, i32* @ENABLE_11D, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %20 = load i32, i32* @HostCmd_CMD_802_11_SNMP_MIB, align 4
  %21 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %22 = load i32, i32* @DOT11D_I, align 4
  %23 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %19, i32 %20, i32 %21, i32 %22, i32* %5, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %27 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ERROR, align 4
  %30 = call i32 @mwifiex_dbg(i32 %28, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %25, %17
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32* @cfg80211_find_ie(i32, i32, i32) #1

declare dso_local i64 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
