; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_dev_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_dev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32, i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.b43legacy_wl = type { i64, i32, i32, %struct.b43legacy_wldev* }
%struct.b43legacy_wldev = type { i32, %struct.TYPE_6__*, i32, %struct.b43legacy_phy }
%struct.TYPE_6__ = type { i32 }
%struct.b43legacy_phy = type { i64, i64, i64, i32 }

@B43legacy_ANTENNA_DEFAULT = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@B43legacy_PHYTYPE_B = common dso_local global i32 0, align 4
@B43legacy_PHYMODE_B = common dso_local global i32 0, align 4
@B43legacy_PHYMODE_G = common dso_local global i32 0, align 4
@B43legacy_STAT_STARTED = common dso_local global i64 0, align 8
@B43legacy_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Radio turned on by software\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"The hardware RF-kill button still turns the radio physically off. Press the button to turn it on.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Radio turned off by software\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @b43legacy_op_dev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_op_dev_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_wl*, align 8
  %6 = alloca %struct.b43legacy_wldev*, align 8
  %7 = alloca %struct.b43legacy_phy*, align 8
  %8 = alloca %struct.ieee80211_conf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %13)
  store %struct.b43legacy_wl* %14, %struct.b43legacy_wl** %5, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  store %struct.ieee80211_conf* %16, %struct.ieee80211_conf** %8, align 8
  store i32 65535, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @B43legacy_ANTENNA_DEFAULT, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %19 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %22 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %21, i32 0, i32 3
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %22, align 8
  store %struct.b43legacy_wldev* %23, %struct.b43legacy_wldev** %6, align 8
  %24 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %25 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %24, i32 0, i32 3
  store %struct.b43legacy_phy* %25, %struct.b43legacy_phy** %7, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %32 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @b43legacy_set_retry_limits(%struct.b43legacy_wldev* %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %30, %2
  %40 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %208

47:                                               ; preds = %39
  %48 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %65 [
    i32 128, label %54
  ]

54:                                               ; preds = %47
  %55 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %7, align 8
  %56 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @B43legacy_PHYTYPE_B, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @B43legacy_PHYMODE_B, align 4
  store i32 %61, i32* %10, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @B43legacy_PHYMODE_G, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %67

65:                                               ; preds = %47
  %66 = call i32 @B43legacy_WARN_ON(i32 1)
  br label %67

67:                                               ; preds = %65, %64
  %68 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @b43legacy_switch_phymode(%struct.b43legacy_wl* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %208

74:                                               ; preds = %67
  %75 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %76 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %75, i32 0, i32 2
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %80 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %79)
  %81 = load i64, i64* @B43legacy_STAT_STARTED, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %85 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %84, i32 0, i32 2
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %208

88:                                               ; preds = %74
  %89 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %90 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %91 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %89, i32 %90, i32 0)
  %92 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %93 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %92, i32 0, i32 2
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %97 = call i32 @b43legacy_synchronize_irq(%struct.b43legacy_wldev* %96)
  %98 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %99 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %7, align 8
  %105 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %88
  %109 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %110 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %111 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %109, i64 %115, i32 0)
  br label %117

117:                                              ; preds = %108, %88
  %118 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %119 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %128 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 %126, i32* %130, align 4
  %131 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %132 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %117
  %136 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %137 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %7, align 8
  %140 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %138, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %135
  %144 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %145 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %7, align 8
  %148 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %150 = call i32 @b43legacy_phy_xmitpower(%struct.b43legacy_wldev* %149)
  br label %151

151:                                              ; preds = %143, %135
  br label %152

152:                                              ; preds = %151, %117
  %153 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @b43legacy_mgmtframe_txantenna(%struct.b43legacy_wldev* %153, i32 %154)
  %156 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %157 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %7, align 8
  %160 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %158, %161
  br i1 %162, label %163, label %193

163:                                              ; preds = %152
  %164 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %165 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %163
  %169 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %170 = call i32 @b43legacy_radio_turn_on(%struct.b43legacy_wldev* %169)
  %171 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %172 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %171, i32 0, i32 1
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = call i32 @b43legacyinfo(%struct.TYPE_6__* %173, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %175 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %176 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %168
  %180 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %181 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %180, i32 0, i32 1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = call i32 @b43legacyinfo(%struct.TYPE_6__* %182, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0))
  br label %184

184:                                              ; preds = %179, %168
  br label %192

185:                                              ; preds = %163
  %186 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %187 = call i32 @b43legacy_radio_turn_off(%struct.b43legacy_wldev* %186, i32 0)
  %188 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %189 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %188, i32 0, i32 1
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = call i32 @b43legacyinfo(%struct.TYPE_6__* %190, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %192

192:                                              ; preds = %185, %184
  br label %193

193:                                              ; preds = %192, %152
  %194 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %195 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %194, i32 0, i32 2
  %196 = load i64, i64* %9, align 8
  %197 = call i32 @spin_lock_irqsave(i32* %195, i64 %196)
  %198 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %199 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %200 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %201 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %198, i32 %199, i32 %202)
  %204 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %205 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %204, i32 0, i32 2
  %206 = load i64, i64* %9, align 8
  %207 = call i32 @spin_unlock_irqrestore(i32* %205, i64 %206)
  br label %208

208:                                              ; preds = %193, %83, %73, %46
  %209 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %210 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %209, i32 0, i32 1
  %211 = call i32 @mutex_unlock(i32* %210)
  %212 = load i32, i32* %12, align 4
  ret i32 %212
}

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @b43legacy_set_retry_limits(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_switch_phymode(%struct.b43legacy_wl*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_synchronize_irq(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev*, i64, i32) #1

declare dso_local i32 @b43legacy_phy_xmitpower(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_mgmtframe_txantenna(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_radio_turn_on(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacyinfo(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @b43legacy_radio_turn_off(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
