; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32, i64, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.b43_wl = type { i64, i32, %struct.b43_wldev* }
%struct.b43_wldev = type { %struct.TYPE_7__*, i32, %struct.b43_phy }
%struct.TYPE_7__ = type { i32 }
%struct.b43_phy = type { i64, i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.b43_wldev*, i32)* }

@IEEE80211_CONF_CHANGE_LISTEN_INTERVAL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@B43_TXPWR_IGNORE_TIME = common dso_local global i32 0, align 4
@B43_TXPWR_IGNORE_TSSI = common dso_local global i32 0, align 4
@B43_ANTENNA_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Radio turned on by software\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"The hardware RF-kill button still turns the radio physically off. Press the button to turn it on.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Radio turned off by software\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @b43_op_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_op_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wl*, align 8
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca %struct.b43_phy*, align 8
  %8 = alloca %struct.ieee80211_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %11)
  store %struct.b43_wl* %12, %struct.b43_wl** %5, align 8
  %13 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %14 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %13, i32 0, i32 2
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %14, align 8
  store %struct.b43_wldev* %15, %struct.b43_wldev** %6, align 8
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %17 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %16, i32 0, i32 2
  store %struct.b43_phy* %17, %struct.b43_phy** %7, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  store %struct.ieee80211_conf* %19, %struct.ieee80211_conf** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %21 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %24 = call i32 @b43_mac_suspend(%struct.b43_wldev* %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IEEE80211_CONF_CHANGE_LISTEN_INTERVAL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %31 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @b43_set_beacon_listen_interval(%struct.b43_wldev* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %41, i32 0, i32 4
  %43 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %44 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %43, i32 0, i32 4
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %52 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %54 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %55 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call i32 @b43_switch_band(%struct.b43_wldev* %53, %struct.TYPE_8__* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %40
  br label %188

62:                                               ; preds = %40
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %64 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %65 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @b43_switch_channel(%struct.b43_wldev* %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %35
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %75 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %76 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %79 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @b43_set_retry_limits(%struct.b43_wldev* %74, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %73, %68
  %83 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  br label %188

90:                                               ; preds = %82
  %91 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %92 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %101 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %105 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %90
  %109 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %110 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %113 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %108
  %117 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %118 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %121 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %123 = load i32, i32* @B43_TXPWR_IGNORE_TIME, align 4
  %124 = load i32, i32* @B43_TXPWR_IGNORE_TSSI, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @b43_phy_txpower_check(%struct.b43_wldev* %122, i32 %125)
  br label %127

127:                                              ; preds = %116, %108
  br label %128

128:                                              ; preds = %127, %90
  %129 = load i32, i32* @B43_ANTENNA_DEFAULT, align 4
  store i32 %129, i32* %9, align 4
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @b43_mgmtframe_txantenna(%struct.b43_wldev* %130, i32 %131)
  %133 = load i32, i32* @B43_ANTENNA_DEFAULT, align 4
  store i32 %133, i32* %9, align 4
  %134 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %135 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %134, i32 0, i32 2
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %137, align 8
  %139 = icmp ne i32 (%struct.b43_wldev*, i32)* %138, null
  br i1 %139, label %140, label %149

140:                                              ; preds = %128
  %141 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %142 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %141, i32 0, i32 2
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %144, align 8
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 %145(%struct.b43_wldev* %146, i32 %147)
  br label %149

149:                                              ; preds = %140, %128
  %150 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %151 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %154 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %152, %155
  br i1 %156, label %157, label %187

157:                                              ; preds = %149
  %158 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %159 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %157
  %163 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %164 = call i32 @b43_software_rfkill(%struct.b43_wldev* %163, i32 0)
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %166 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = call i32 @b43info(%struct.TYPE_7__* %167, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %169 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %170 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %162
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %175 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = call i32 @b43info(%struct.TYPE_7__* %176, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0))
  br label %178

178:                                              ; preds = %173, %162
  br label %186

179:                                              ; preds = %157
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %181 = call i32 @b43_software_rfkill(%struct.b43_wldev* %180, i32 1)
  %182 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %183 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %182, i32 0, i32 0
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = call i32 @b43info(%struct.TYPE_7__* %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %186

186:                                              ; preds = %179, %178
  br label %187

187:                                              ; preds = %186, %149
  br label %188

188:                                              ; preds = %187, %89, %61
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %190 = call i32 @b43_mac_enable(%struct.b43_wldev* %189)
  %191 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %192 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %191, i32 0, i32 1
  %193 = call i32 @mutex_unlock(i32* %192)
  %194 = load i32, i32* %10, align 4
  ret i32 %194
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @b43_set_beacon_listen_interval(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_switch_band(%struct.b43_wldev*, %struct.TYPE_8__*) #1

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_set_retry_limits(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_txpower_check(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_mgmtframe_txantenna(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_software_rfkill(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43info(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
