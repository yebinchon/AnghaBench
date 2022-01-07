; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_wep_dynamic_key_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_wep_dynamic_key_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_11__*, %struct.TYPE_7__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, %struct.il_addsta_cmd* }
%struct.il_addsta_cmd = type { i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.il_addsta_cmd*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ieee80211_key_conf = type { i32, i64, %struct.TYPE_12__*, i32, i32 }

@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@STA_KEY_FLG_WEP = common dso_local global i32 0, align 4
@STA_KEY_FLG_MAP_KEY_MSK = common dso_local global i32 0, align 4
@STA_KEY_FLG_KEYID_POS = common dso_local global i32 0, align 4
@STA_KEY_FLG_INVALID = common dso_local global i32 0, align 4
@WEP_KEY_LEN_128 = common dso_local global i64 0, align 8
@STA_KEY_FLG_KEY_SIZE_MSK = common dso_local global i32 0, align 4
@STA_KEY_MULTICAST_MSK = common dso_local global i32 0, align 4
@STA_KEY_FLG_ENCRYPT_MSK = common dso_local global i32 0, align 4
@STA_KEY_FLG_NO_ENC = common dso_local global i32 0, align 4
@WEP_INVALID_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"no space for a new key\00", align 1
@STA_MODIFY_KEY_MASK = common dso_local global i32 0, align 4
@STA_CONTROL_MODIFY_MSK = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.ieee80211_key_conf*, i64)* @il4965_set_wep_dynamic_key_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_set_wep_dynamic_key_info(%struct.il_priv* %0, %struct.ieee80211_key_conf* %1, i64 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_key_conf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_addsta_cmd, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 3
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @STA_KEY_FLG_WEP, align 4
  %20 = load i32, i32* @STA_KEY_FLG_MAP_KEY_MSK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @STA_KEY_FLG_KEYID_POS, align 4
  %28 = shl i32 %26, %27
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @STA_KEY_FLG_INVALID, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @WEP_KEY_LEN_128, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %3
  %42 = load i32, i32* @STA_KEY_FLG_KEY_SIZE_MSK, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %3
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %46, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @STA_KEY_MULTICAST_MSK, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %65 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i32 %63, i32* %70, align 8
  %71 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %75 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i64 %73, i64* %80, align 8
  %81 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %85 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %83, i32* %90, align 8
  %91 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %92 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %91, i32 0, i32 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %97, align 8
  %99 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %100 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %99, i32 0, i32 2
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %103 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @memcpy(%struct.il_addsta_cmd* %98, %struct.TYPE_12__* %101, i32 %105)
  %107 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %108 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %114, align 8
  %116 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %115, i64 3
  %117 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %118 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %117, i32 0, i32 2
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %121 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(%struct.il_addsta_cmd* %116, %struct.TYPE_12__* %119, i32 %123)
  %125 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %126 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @STA_KEY_FLG_ENCRYPT_MSK, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @STA_KEY_FLG_NO_ENC, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %56
  %139 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %140 = call i64 @il_get_free_ucode_key_idx(%struct.il_priv* %139)
  %141 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %142 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %141, i32 0, i32 1
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  store i64 %140, i64* %148, align 8
  br label %149

149:                                              ; preds = %138, %56
  %150 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %151 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %150, i32 0, i32 1
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @WEP_INVALID_OFFSET, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @WARN(i32 %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %165 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %164, i32 0, i32 1
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i32 %163, i32* %171, align 8
  %172 = load i32, i32* @STA_MODIFY_KEY_MASK, align 4
  %173 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %174 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %173, i32 0, i32 1
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  store i32 %172, i32* %180, align 4
  %181 = load i32, i32* @STA_CONTROL_MODIFY_MSK, align 4
  %182 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %183 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %182, i32 0, i32 1
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i64, i64* %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  store i32 %181, i32* %188, align 8
  %189 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %190 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %189, i32 0, i32 1
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = load i64, i64* %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = call i32 @memcpy(%struct.il_addsta_cmd* %9, %struct.TYPE_12__* %194, i32 4)
  %196 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %197 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %196, i32 0, i32 0
  %198 = load i64, i64* %7, align 8
  %199 = call i32 @spin_unlock_irqrestore(i32* %197, i64 %198)
  %200 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %201 = load i32, i32* @CMD_SYNC, align 4
  %202 = call i32 @il_send_add_sta(%struct.il_priv* %200, %struct.il_addsta_cmd* %9, i32 %201)
  ret i32 %202
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.il_addsta_cmd*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @il_get_free_ucode_key_idx(%struct.il_priv*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @il_send_add_sta(%struct.il_priv*, %struct.il_addsta_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
