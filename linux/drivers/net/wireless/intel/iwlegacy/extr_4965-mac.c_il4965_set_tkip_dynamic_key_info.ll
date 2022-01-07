; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_tkip_dynamic_key_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_tkip_dynamic_key_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32 }

@STA_KEY_FLG_TKIP = common dso_local global i32 0, align 4
@STA_KEY_FLG_MAP_KEY_MSK = common dso_local global i32 0, align 4
@STA_KEY_FLG_KEYID_POS = common dso_local global i32 0, align 4
@STA_KEY_FLG_INVALID = common dso_local global i32 0, align 4
@STA_KEY_MULTICAST_MSK = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@STA_KEY_FLG_ENCRYPT_MSK = common dso_local global i32 0, align 4
@STA_KEY_FLG_NO_ENC = common dso_local global i32 0, align 4
@WEP_INVALID_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"no space for a new key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.ieee80211_key_conf*, i64)* @il4965_set_tkip_dynamic_key_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_set_tkip_dynamic_key_info(%struct.il_priv* %0, %struct.ieee80211_key_conf* %1, i64 %2) #0 {
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
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @STA_KEY_FLG_TKIP, align 4
  %11 = load i32, i32* @STA_KEY_FLG_MAP_KEY_MSK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %9, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STA_KEY_FLG_KEYID_POS, align 4
  %19 = shl i32 %17, %18
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @STA_KEY_FLG_INVALID, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @STA_KEY_MULTICAST_MSK, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %3
  %38 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %39 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %44 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %49 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i32 %54, i32* %61, align 8
  %62 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %63 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 16, i32* %68, align 8
  %69 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %70 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @STA_KEY_FLG_ENCRYPT_MSK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @STA_KEY_FLG_NO_ENC, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %37
  %83 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %84 = call i64 @il_get_free_ucode_key_idx(%struct.il_priv* %83)
  %85 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %86 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i64 %84, i64* %92, align 8
  br label %93

93:                                               ; preds = %82, %37
  %94 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %95 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @WEP_INVALID_OFFSET, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @WARN(i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %109 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i32 %107, i32* %115, align 8
  %116 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %117 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %116, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = load i64, i64* %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %125 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memcpy(i32 %123, i32 %126, i32 16)
  %128 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %129 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load i64, i64* %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %138 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @memcpy(i32 %136, i32 %139, i32 16)
  %141 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %142 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %141, i32 0, i32 0
  %143 = load i64, i64* %7, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32* %142, i64 %143)
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @il_get_free_ucode_key_idx(%struct.il_priv*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
