; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64, i32, i32, i32 }
%struct.b43legacy_wl = type { i32, i32, i32, %struct.b43legacy_wldev*, %struct.ieee80211_vif* }
%struct.b43legacy_wldev = type { i32 }

@B43legacy_STAT_STARTED = common dso_local global i64 0, align 8
@B43legacy_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@B43legacy_STAT_INITIALIZED = common dso_local global i64 0, align 8
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @b43legacy_op_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_op_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43legacy_wl*, align 8
  %10 = alloca %struct.b43legacy_wldev*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %12)
  store %struct.b43legacy_wl* %13, %struct.b43legacy_wl** %9, align 8
  %14 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %15 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %18 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %17, i32 0, i32 4
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %18, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = icmp ne %struct.ieee80211_vif* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @B43legacy_WARN_ON(i32 %22)
  %24 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %25 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %24, i32 0, i32 3
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %25, align 8
  store %struct.b43legacy_wldev* %26, %struct.b43legacy_wldev** %10, align 8
  %27 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %28 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %27, i32 0, i32 1
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %32 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %31)
  %33 = load i64, i64* @B43legacy_STAT_STARTED, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %37 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %36, i32 0, i32 1
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %174

40:                                               ; preds = %4
  %41 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %42 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %43 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %41, i32 %42, i32 0)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %40
  %49 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %50 = call i32 @b43legacy_synchronize_irq(%struct.b43legacy_wldev* %49)
  %51 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %57 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = call i32 @memcpy(i32 %58, i32 %61, i32 %62)
  br label %69

64:                                               ; preds = %48
  %65 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %66 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @eth_zero_addr(i32 %67)
  br label %69

69:                                               ; preds = %64, %55
  br label %70

70:                                               ; preds = %69, %40
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %72 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %71)
  %73 = load i64, i64* @B43legacy_STAT_INITIALIZED, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %82 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %83 = call i64 @b43legacy_is_mode(%struct.b43legacy_wl* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %87 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %88 = call i64 @b43legacy_is_mode(%struct.b43legacy_wl* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85, %80
  %91 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %92 = call i32 @b43legacy_update_templates(%struct.b43legacy_wl* %91)
  br label %93

93:                                               ; preds = %90, %85, %75
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %100 = call i32 @b43legacy_write_mac_bssid_templates(%struct.b43legacy_wldev* %99)
  br label %101

101:                                              ; preds = %98, %93
  br label %102

102:                                              ; preds = %101, %70
  %103 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %104 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %103, i32 0, i32 1
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %108 = call i32 @b43legacy_mac_suspend(%struct.b43legacy_wldev* %107)
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %102
  %114 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %115 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %116 = call i64 @b43legacy_is_mode(%struct.b43legacy_wl* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %120 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %121 = call i64 @b43legacy_is_mode(%struct.b43legacy_wl* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118, %113
  %124 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %125 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %126 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @b43legacy_set_beacon_int(%struct.b43legacy_wldev* %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %118, %102
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %136 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %137 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @b43legacy_update_basic_rates(%struct.b43legacy_wldev* %135, i32 %138)
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
  %151 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %152 = call i32 @b43legacy_short_slot_timing_enable(%struct.b43legacy_wldev* %151)
  br label %156

153:                                              ; preds = %145
  %154 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %155 = call i32 @b43legacy_short_slot_timing_disable(%struct.b43legacy_wldev* %154)
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %140
  %158 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %159 = call i32 @b43legacy_mac_enable(%struct.b43legacy_wldev* %158)
  %160 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %161 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %160, i32 0, i32 1
  %162 = load i64, i64* %11, align 8
  %163 = call i32 @spin_lock_irqsave(i32* %161, i64 %162)
  %164 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %165 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %166 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %167 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %164, i32 %165, i32 %168)
  %170 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %171 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %170, i32 0, i32 1
  %172 = load i64, i64* %11, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  br label %174

174:                                              ; preds = %157, %35
  %175 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %176 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %175, i32 0, i32 0
  %177 = call i32 @mutex_unlock(i32* %176)
  ret void
}

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_synchronize_irq(%struct.b43legacy_wldev*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i64 @b43legacy_is_mode(%struct.b43legacy_wl*, i32) #1

declare dso_local i32 @b43legacy_update_templates(%struct.b43legacy_wl*) #1

declare dso_local i32 @b43legacy_write_mac_bssid_templates(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_mac_suspend(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_set_beacon_int(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_update_basic_rates(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_short_slot_timing_enable(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_short_slot_timing_disable(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_mac_enable(%struct.b43legacy_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
