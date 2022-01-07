; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_update_tkip_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_update_tkip_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32* }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IL_INVALID_STATION = common dso_local global i64 0, align 8
@STA_MODIFY_KEY_MASK = common dso_local global i32 0, align 4
@STA_CONTROL_MODIFY_MSK = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_update_tkip_key(%struct.il_priv* %0, %struct.ieee80211_key_conf* %1, %struct.ieee80211_sta* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %15 = call i64 @il_scan_cancel(%struct.il_priv* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %96

18:                                               ; preds = %5
  %19 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %21 = call i64 @il_sta_id_or_broadcast(%struct.il_priv* %19, %struct.ieee80211_sta* %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @IL_INVALID_STATION, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %96

26:                                               ; preds = %18
  %27 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 %31, i64* %39, align 8
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %62, %26
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 5
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_le16(i32 %48)
  %50 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %51 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %49, i32* %61, align 4
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %40

65:                                               ; preds = %40
  %66 = load i32, i32* @STA_MODIFY_KEY_MASK, align 4
  %67 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %68 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %66, i32* %74, align 4
  %75 = load i32, i32* @STA_CONTROL_MODIFY_MSK, align 4
  %76 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %77 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %75, i32* %82, align 8
  %83 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %84 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %85 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* @CMD_ASYNC, align 4
  %91 = call i32 @il_send_add_sta(%struct.il_priv* %83, %struct.TYPE_8__* %89, i32 %90)
  %92 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %93 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %92, i32 0, i32 0
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  br label %96

96:                                               ; preds = %65, %25, %17
  ret void
}

declare dso_local i64 @il_scan_cancel(%struct.il_priv*) #1

declare dso_local i64 @il_sta_id_or_broadcast(%struct.il_priv*, %struct.ieee80211_sta*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @il_send_add_sta(%struct.il_priv*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
