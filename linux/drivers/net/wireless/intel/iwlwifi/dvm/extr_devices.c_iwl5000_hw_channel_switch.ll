; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_devices.c_iwl5000_hw_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_devices.c_iwl5000_hw_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32, %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.ieee80211_vif*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_channel_switch = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.iwl5000_channel_switch_cmd = type { i32, i32, i32, i32, i32, i32 }
%struct.iwl_host_cmd = type { i32, i32, i32 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@REPLY_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"channel switch from %d to %d\0A\00", align 1
@TIME_UNIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"uCode time for the switch is 0x%x\0A\00", align 1
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)* @iwl5000_hw_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl5000_hw_channel_switch(%struct.iwl_priv* %0, %struct.ieee80211_channel_switch* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.ieee80211_channel_switch*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca %struct.iwl5000_channel_switch_cmd, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_vif*, align 8
  %14 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.ieee80211_channel_switch* %1, %struct.ieee80211_channel_switch** %4, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 2
  %17 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %16, align 8
  %18 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %19 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %17, i64 %18
  store %struct.iwl_rxon_context* %19, %struct.iwl_rxon_context** %5, align 8
  %20 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %25, i32 0, i32 2
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %26, align 8
  store %struct.ieee80211_vif* %27, %struct.ieee80211_vif** %13, align 8
  %28 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 0
  %29 = ptrtoint %struct.iwl5000_channel_switch_cmd* %6 to i32
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 1
  store i32 24, i32* %30, align 4
  %31 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 2
  %32 = load i32, i32* @REPLY_CHANNEL_SWITCH, align 4
  store i32 %32, i32* %31, align 4
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %47 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_11H(%struct.iwl_priv* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @cpu_to_le16(i32 %53)
  %55 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %57 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 4
  store i32 %59, i32* %60, align 4
  %61 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %62 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %11, align 4
  %69 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %73 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %2
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %83 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = sdiv i32 %86, %87
  %89 = icmp sgt i32 %81, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %80
  %91 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %92 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* %12, align 4
  %97 = sdiv i32 %95, %96
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %101

100:                                              ; preds = %80
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %90
  br label %102

102:                                              ; preds = %101, %77, %2
  %103 = load i32, i32* %11, align 4
  %104 = icmp sle i32 %103, 1
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %107 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @cpu_to_le32(i32 %108)
  %110 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 2
  store i32 %109, i32* %110, align 4
  br label %132

111:                                              ; preds = %102
  %112 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %13, align 8
  %113 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* @TIME_UNIT, align 4
  %119 = mul nsw i32 %117, %118
  store i32 %119, i32* %7, align 4
  %120 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @iwl_usecs_to_beacons(%struct.iwl_priv* %120, i32 %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %125 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %126 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @iwl_add_beacon_time(%struct.iwl_priv* %124, i32 %127, i32 %128, i32 %129)
  %131 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 2
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %111, %105
  %133 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %134 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_11H(%struct.iwl_priv* %133, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %138 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %144 = and i32 %142, %143
  %145 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %147 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %146, %struct.iwl_host_cmd* %14)
  ret i32 %147
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_11H(%struct.iwl_priv*, i8*, i32, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_usecs_to_beacons(%struct.iwl_priv*, i32, i32) #1

declare dso_local i32 @iwl_add_beacon_time(%struct.iwl_priv*, i32, i32, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
