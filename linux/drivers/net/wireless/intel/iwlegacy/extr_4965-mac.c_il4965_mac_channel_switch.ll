; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_mac_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_mac_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.il_priv* }
%struct.ieee80211_conf = type { i32 }
%struct.il_priv = type { i32, i32, i64, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.il_ht_config, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.il_ht_config = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_channel_switch = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32 }
%struct.il_channel_info = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@S_EXIT_PENDING = common dso_local global i32 0, align 4
@S_SCANNING = common dso_local global i32 0, align 4
@S_CHANNEL_SWITCH_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid channel\0A\00", align 1
@IEEE80211_HT_PARAM_CHA_SEC_NONE = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_BELOW = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_ABOVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_mac_channel_switch(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel_switch* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_channel_switch*, align 8
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca %struct.il_channel_info*, align 8
  %9 = alloca %struct.ieee80211_conf*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca %struct.il_ht_config*, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_channel_switch* %2, %struct.ieee80211_channel_switch** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 1
  %15 = load %struct.il_priv*, %struct.il_priv** %14, align 8
  store %struct.il_priv* %15, %struct.il_priv** %7, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  store %struct.ieee80211_conf* %17, %struct.ieee80211_conf** %9, align 8
  %18 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %20, align 8
  store %struct.ieee80211_channel* %21, %struct.ieee80211_channel** %10, align 8
  %22 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 8
  store %struct.il_ht_config* %23, %struct.il_ht_config** %11, align 8
  %24 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %29 = call i64 @il_is_rfkill(%struct.il_priv* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %186

32:                                               ; preds = %3
  %33 = load i32, i32* @S_EXIT_PENDING, align 4
  %34 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 3
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @S_SCANNING, align 4
  %40 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 3
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @S_CHANNEL_SWITCH_PENDING, align 4
  %46 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 3
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38, %32
  br label %186

51:                                               ; preds = %44
  %52 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %53 = call i32 @il_is_associated(%struct.il_priv* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %186

56:                                               ; preds = %51
  %57 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)*, i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)** %60, align 8
  %62 = icmp ne i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %186

64:                                               ; preds = %56
  %65 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %66 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %12, align 8
  %68 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %69 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %68, i32 0, i32 9
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @le16_to_cpu(i32 %71)
  %73 = load i64, i64* %12, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %186

76:                                               ; preds = %64
  %77 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %79 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call %struct.il_channel_info* @il_get_channel_info(%struct.il_priv* %77, i32 %80, i64 %81)
  store %struct.il_channel_info* %82, %struct.il_channel_info** %8, align 8
  %83 = load %struct.il_channel_info*, %struct.il_channel_info** %8, align 8
  %84 = call i32 @il_is_channel_valid(%struct.il_channel_info* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %76
  %87 = call i32 @D_MAC80211(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %186

88:                                               ; preds = %76
  %89 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %90 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %89, i32 0, i32 5
  %91 = call i32 @spin_lock_irq(i32* %90)
  %92 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %93 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %96 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.il_ht_config, %struct.il_ht_config* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %98, i32 0, i32 0
  %100 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_10__* %99)
  switch i32 %100, label %125 [
    i32 128, label %101
    i32 131, label %101
    i32 130, label %109
    i32 129, label %117
  ]

101:                                              ; preds = %88, %88
  %102 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %103 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_NONE, align 4
  %106 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %107 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  br label %125

109:                                              ; preds = %88
  %110 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_BELOW, align 4
  %111 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %112 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %115 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  br label %125

117:                                              ; preds = %88
  %118 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_ABOVE, align 4
  %119 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %120 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %123 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %88, %117, %109, %101
  %126 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %127 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @le16_to_cpu(i32 %129)
  %131 = load i64, i64* %12, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %135 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %125
  %138 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %139 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %140 = call i32 @il_set_rxon_channel(%struct.il_priv* %138, %struct.ieee80211_channel* %139)
  %141 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %142 = load %struct.il_ht_config*, %struct.il_ht_config** %11, align 8
  %143 = call i32 @il_set_rxon_ht(%struct.il_priv* %141, %struct.il_ht_config* %142)
  %144 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %145 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %146 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %149 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @il_set_flags_for_band(%struct.il_priv* %144, i32 %147, i32 %150)
  %152 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %153 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %152, i32 0, i32 5
  %154 = call i32 @spin_unlock_irq(i32* %153)
  %155 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %156 = call i32 @il_set_rate(%struct.il_priv* %155)
  %157 = load i32, i32* @S_CHANNEL_SWITCH_PENDING, align 4
  %158 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %159 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %158, i32 0, i32 3
  %160 = call i32 @set_bit(i32 %157, i32* %159)
  %161 = load i64, i64* %12, align 8
  %162 = call i64 @cpu_to_le16(i64 %161)
  %163 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %164 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  %165 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %166 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %165, i32 0, i32 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)*, i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)** %168, align 8
  %170 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %171 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %172 = call i64 %169(%struct.il_priv* %170, %struct.ieee80211_channel_switch* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %137
  %175 = load i32, i32* @S_CHANNEL_SWITCH_PENDING, align 4
  %176 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %177 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %176, i32 0, i32 3
  %178 = call i32 @clear_bit(i32 %175, i32* %177)
  %179 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %180 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %179, i32 0, i32 2
  store i64 0, i64* %180, align 8
  %181 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %182 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ieee80211_chswitch_done(i32 %183, i32 0)
  br label %185

185:                                              ; preds = %174, %137
  br label %186

186:                                              ; preds = %185, %86, %75, %63, %55, %50, %31
  %187 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %188 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %187, i32 0, i32 0
  %189 = call i32 @mutex_unlock(i32* %188)
  %190 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @D_MAC80211(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @il_is_rfkill(%struct.il_priv*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_is_associated(%struct.il_priv*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.il_channel_info* @il_get_channel_info(%struct.il_priv*, i32, i64) #1

declare dso_local i32 @il_is_channel_valid(%struct.il_channel_info*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_10__*) #1

declare dso_local i32 @il_set_rxon_channel(%struct.il_priv*, %struct.ieee80211_channel*) #1

declare dso_local i32 @il_set_rxon_ht(%struct.il_priv*, %struct.il_ht_config*) #1

declare dso_local i32 @il_set_flags_for_band(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @il_set_rate(%struct.il_priv*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @cpu_to_le16(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_chswitch_done(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
