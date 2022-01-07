; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_set_ccmp_dynamic_key_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_set_ccmp_dynamic_key_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32, i32, i32 }

@STA_KEY_FLG_CCMP = common dso_local global i32 0, align 4
@STA_KEY_FLG_MAP_KEY_MSK = common dso_local global i32 0, align 4
@STA_KEY_FLG_KEYID_POS = common dso_local global i32 0, align 4
@STA_KEY_MULTICAST_MSK = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@STA_KEY_FLG_INVALID = common dso_local global i32 0, align 4
@STA_KEY_FLG_ENCRYPT_MSK = common dso_local global i32 0, align 4
@STA_KEY_FLG_NO_ENC = common dso_local global i32 0, align 4
@WEP_INVALID_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"no space for a new key\00", align 1
@STA_MODIFY_KEY_MASK = common dso_local global i32 0, align 4
@STA_CONTROL_MODIFY_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"hwcrypto: modify ucode station key info\0A\00", align 1
@CMD_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.ieee80211_key_conf*, i64)* @il3945_set_ccmp_dynamic_key_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_set_ccmp_dynamic_key_info(%struct.il_priv* %0, %struct.ieee80211_key_conf* %1, i64 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_key_conf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @STA_KEY_FLG_CCMP, align 4
  %11 = load i32, i32* @STA_KEY_FLG_MAP_KEY_MSK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %8, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STA_KEY_FLG_KEYID_POS, align 4
  %19 = shl i32 %17, %18
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @STA_KEY_MULTICAST_MSK, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %3
  %34 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %35 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @STA_KEY_FLG_INVALID, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %49 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32 %54, i32* %61, align 8
  %62 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %66 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32 %64, i32* %71, align 4
  %72 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %73 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memcpy(i32 %79, i32 %82, i32 %85)
  %87 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %88 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %97 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %100 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memcpy(i32 %95, i32 %98, i32 %101)
  %103 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %104 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %103, i32 0, i32 1
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @STA_KEY_FLG_ENCRYPT_MSK, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* @STA_KEY_FLG_NO_ENC, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %33
  %117 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %118 = call i64 @il_get_free_ucode_key_idx(%struct.il_priv* %117)
  %119 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %120 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %119, i32 0, i32 1
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  store i64 %118, i64* %126, align 8
  br label %127

127:                                              ; preds = %116, %33
  %128 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %129 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load i64, i64* %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @WEP_INVALID_OFFSET, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @WARN(i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %143 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %142, i32 0, i32 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  store i32 %141, i32* %149, align 8
  %150 = load i32, i32* @STA_MODIFY_KEY_MASK, align 4
  %151 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %152 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %151, i32 0, i32 1
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = load i64, i64* %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  store i32 %150, i32* %158, align 4
  %159 = load i32, i32* @STA_CONTROL_MODIFY_MSK, align 4
  %160 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %161 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = load i64, i64* %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  store i32 %159, i32* %166, align 8
  %167 = call i32 @D_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %168 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %169 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %170 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %169, i32 0, i32 1
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = load i64, i64* %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* @CMD_ASYNC, align 4
  %176 = call i32 @il_send_add_sta(%struct.il_priv* %168, %struct.TYPE_12__* %174, i32 %175)
  store i32 %176, i32* %9, align 4
  %177 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %178 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %177, i32 0, i32 0
  %179 = load i64, i64* %7, align 8
  %180 = call i32 @spin_unlock_irqrestore(i32* %178, i64 %179)
  %181 = load i32, i32* %9, align 4
  ret i32 %181
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @il_get_free_ucode_key_idx(%struct.il_priv*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @il_send_add_sta(%struct.il_priv*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
