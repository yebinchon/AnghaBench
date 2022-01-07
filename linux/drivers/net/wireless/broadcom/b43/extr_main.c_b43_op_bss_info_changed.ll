; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64, i32, i32, i32 }
%struct.b43_wl = type { i32, i32, %struct.ieee80211_vif*, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@B43_STAT_STARTED = common dso_local global i64 0, align 8
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @b43_op_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_op_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_wl*, align 8
  %10 = alloca %struct.b43_wldev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %11)
  store %struct.b43_wl* %12, %struct.b43_wl** %9, align 8
  %13 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %14 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %17 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %16, i32 0, i32 3
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %17, align 8
  store %struct.b43_wldev* %18, %struct.b43_wldev** %10, align 8
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %20 = icmp ne %struct.b43_wldev* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %23 = call i64 @b43_status(%struct.b43_wldev* %22)
  %24 = load i64, i64* @B43_STAT_STARTED, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %4
  br label %160

27:                                               ; preds = %21
  %28 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %29 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %28, i32 0, i32 2
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %29, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = icmp ne %struct.ieee80211_vif* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @B43_WARN_ON(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %27
  %40 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %46 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32 %47, i32 %50, i32 %51)
  br label %58

53:                                               ; preds = %39
  %54 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %55 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @eth_zero_addr(i32 %56)
  br label %58

58:                                               ; preds = %53, %44
  br label %59

59:                                               ; preds = %58, %27
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %61 = call i64 @b43_status(%struct.b43_wldev* %60)
  %62 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %71 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %72 = call i64 @b43_is_mode(%struct.b43_wl* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %76 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %77 = call i64 @b43_is_mode(%struct.b43_wl* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %81 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %82 = call i64 @b43_is_mode(%struct.b43_wl* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79, %74, %69
  %85 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %86 = call i32 @b43_update_templates(%struct.b43_wl* %85)
  br label %87

87:                                               ; preds = %84, %79, %64
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %94 = call i32 @b43_write_mac_bssid_templates(%struct.b43_wldev* %93)
  br label %95

95:                                               ; preds = %92, %87
  br label %96

96:                                               ; preds = %95, %59
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %98 = call i32 @b43_mac_suspend(%struct.b43_wldev* %97)
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %96
  %104 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %105 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %106 = call i64 @b43_is_mode(%struct.b43_wl* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %110 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %111 = call i64 @b43_is_mode(%struct.b43_wl* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %115 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %116 = call i64 @b43_is_mode(%struct.b43_wl* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %113, %108, %103
  %119 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %120 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %125 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %126 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @b43_set_beacon_int(%struct.b43_wldev* %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %118, %113, %96
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %136 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %137 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @b43_update_basic_rates(%struct.b43_wldev* %135, i32 %138)
  br label %140

140:                                              ; preds = %134, %129
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %147 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %152 = call i32 @b43_short_slot_timing_enable(%struct.b43_wldev* %151)
  br label %156

153:                                              ; preds = %145
  %154 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %155 = call i32 @b43_short_slot_timing_disable(%struct.b43_wldev* %154)
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %140
  %158 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %159 = call i32 @b43_mac_enable(%struct.b43_wldev* %158)
  br label %160

160:                                              ; preds = %157, %26
  %161 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %162 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %161, i32 0, i32 0
  %163 = call i32 @mutex_unlock(i32* %162)
  ret void
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i64 @b43_is_mode(%struct.b43_wl*, i32) #1

declare dso_local i32 @b43_update_templates(%struct.b43_wl*) #1

declare dso_local i32 @b43_write_mac_bssid_templates(%struct.b43_wldev*) #1

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @b43_set_beacon_int(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_update_basic_rates(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_short_slot_timing_enable(%struct.b43_wldev*) #1

declare dso_local i32 @b43_short_slot_timing_disable(%struct.b43_wldev*) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
