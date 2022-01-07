; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_conf_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76x02_dev* }
%struct.mt76x02_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i64, i64 }

@MT_EDCA_CFG_TXOP = common dso_local global i32 0, align 4
@MT_EDCA_CFG_AIFSN = common dso_local global i32 0, align 4
@MT_EDCA_CFG_CWMIN = common dso_local global i32 0, align 4
@MT_EDCA_CFG_CWMAX = common dso_local global i32 0, align 4
@MT_WMM_TXOP_MASK = common dso_local global i32 0, align 4
@MT_WMM_AIFSN = common dso_local global i32 0, align 4
@MT_WMM_AIFSN_MASK = common dso_local global i32 0, align 4
@MT_WMM_CWMIN = common dso_local global i32 0, align 4
@MT_WMM_CWMIN_MASK = common dso_local global i32 0, align 4
@MT_WMM_CWMAX = common dso_local global i32 0, align 4
@MT_WMM_CWMAX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %9 = alloca %struct.mt76x02_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %8, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %15, align 8
  store %struct.mt76x02_dev* %16, %struct.mt76x02_dev** %9, align 8
  store i32 5, i32* %10, align 4
  store i32 10, i32* %11, align 4
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %9, align 8
  %18 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @fls(i64 %34)
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %31, %4
  %37 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @fls(i64 %44)
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @MT_EDCA_CFG_TXOP, align 4
  %48 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @FIELD_PREP(i32 %47, i32 %50)
  %52 = load i32, i32* @MT_EDCA_CFG_AIFSN, align 4
  %53 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @FIELD_PREP(i32 %52, i32 %55)
  %57 = or i32 %51, %56
  %58 = load i32, i32* @MT_EDCA_CFG_CWMIN, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @FIELD_PREP(i32 %58, i32 %59)
  %61 = or i32 %57, %60
  %62 = load i32, i32* @MT_EDCA_CFG_CWMAX, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @FIELD_PREP(i32 %62, i32 %63)
  %65 = or i32 %61, %64
  store i32 %65, i32* %13, align 4
  %66 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @MT_EDCA_CFG_AC(i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @mt76_wr(%struct.mt76x02_dev* %66, i32 %68, i32 %69)
  %71 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %9, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @MT_WMM_TXOP(i32 %72)
  %74 = call i32 @mt76_rr(%struct.mt76x02_dev* %71, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* @MT_WMM_TXOP_MASK, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @MT_WMM_TXOP_SHIFT(i32 %76)
  %78 = shl i32 %75, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %13, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %13, align 4
  %82 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %83 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @MT_WMM_TXOP_SHIFT(i32 %85)
  %87 = shl i32 %84, %86
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %13, align 4
  %90 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %9, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @MT_WMM_TXOP(i32 %91)
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @mt76_wr(%struct.mt76x02_dev* %90, i32 %92, i32 %93)
  %95 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %9, align 8
  %96 = load i32, i32* @MT_WMM_AIFSN, align 4
  %97 = call i32 @mt76_rr(%struct.mt76x02_dev* %95, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* @MT_WMM_AIFSN_MASK, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @MT_WMM_AIFSN_SHIFT(i32 %99)
  %101 = shl i32 %98, %100
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %13, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %13, align 4
  %105 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %106 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @MT_WMM_AIFSN_SHIFT(i32 %108)
  %110 = shl i32 %107, %109
  %111 = load i32, i32* %13, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %13, align 4
  %113 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %9, align 8
  %114 = load i32, i32* @MT_WMM_AIFSN, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @mt76_wr(%struct.mt76x02_dev* %113, i32 %114, i32 %115)
  %117 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %9, align 8
  %118 = load i32, i32* @MT_WMM_CWMIN, align 4
  %119 = call i32 @mt76_rr(%struct.mt76x02_dev* %117, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* @MT_WMM_CWMIN_MASK, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @MT_WMM_CWMIN_SHIFT(i32 %121)
  %123 = shl i32 %120, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %13, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @MT_WMM_CWMIN_SHIFT(i32 %128)
  %130 = shl i32 %127, %129
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  %133 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %9, align 8
  %134 = load i32, i32* @MT_WMM_CWMIN, align 4
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @mt76_wr(%struct.mt76x02_dev* %133, i32 %134, i32 %135)
  %137 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %9, align 8
  %138 = load i32, i32* @MT_WMM_CWMAX, align 4
  %139 = call i32 @mt76_rr(%struct.mt76x02_dev* %137, i32 %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* @MT_WMM_CWMAX_MASK, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @MT_WMM_CWMAX_SHIFT(i32 %141)
  %143 = shl i32 %140, %142
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %13, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @MT_WMM_CWMAX_SHIFT(i32 %148)
  %150 = shl i32 %147, %149
  %151 = load i32, i32* %13, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %13, align 4
  %153 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %9, align 8
  %154 = load i32, i32* @MT_WMM_CWMAX, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @mt76_wr(%struct.mt76x02_dev* %153, i32 %154, i32 %155)
  ret i32 0
}

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_EDCA_CFG_AC(i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @MT_WMM_TXOP(i32) #1

declare dso_local i32 @MT_WMM_TXOP_SHIFT(i32) #1

declare dso_local i32 @MT_WMM_AIFSN_SHIFT(i32) #1

declare dso_local i32 @MT_WMM_CWMIN_SHIFT(i32) #1

declare dso_local i32 @MT_WMM_CWMAX_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
