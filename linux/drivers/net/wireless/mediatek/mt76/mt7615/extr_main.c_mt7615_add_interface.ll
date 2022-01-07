; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7615_dev* }
%struct.mt7615_dev = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.ieee80211_vif = type { %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.mt7615_vif = type { i32, i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mt76_txq = type { %struct.TYPE_6__* }

@MT7615_MAX_INTERFACES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MT7615_MAX_WMM_SETS = common dso_local global i32 0, align 4
@MT7615_WTBL_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @mt7615_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.mt7615_vif*, align 8
  %6 = alloca %struct.mt7615_dev*, align 8
  %7 = alloca %struct.mt76_txq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mt7615_vif*
  store %struct.mt7615_vif* %13, %struct.mt7615_vif** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.mt7615_dev*, %struct.mt7615_dev** %15, align 8
  store %struct.mt7615_dev* %16, %struct.mt7615_dev** %6, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %18 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %22 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %23, -1
  %25 = call i32 @ffs(i32 %24)
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %28 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %30 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MT7615_MAX_INTERFACES, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %129

37:                                               ; preds = %2
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %42 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @get_omac_idx(i32 %40, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOSPC, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %129

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %53 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %55 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %57 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MT7615_MAX_WMM_SETS, align 4
  %60 = srem i32 %58, %59
  %61 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %62 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %64 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %65 = call i32 @mt7615_mcu_set_dev_info(%struct.mt7615_dev* %63, %struct.ieee80211_vif* %64, i32 1)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  br label %129

69:                                               ; preds = %50
  %70 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %71 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @BIT(i32 %72)
  %74 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %75 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %79 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %83 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* @MT7615_WTBL_RESERVED, align 4
  %87 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %88 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %86, %89
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %93 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %97 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i32 -1, i32* %99, align 4
  %100 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %101 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %109 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = call i32 @rcu_assign_pointer(i32 %107, %struct.TYPE_6__* %110)
  %112 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %113 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.mt76_txq*
  store %struct.mt76_txq* %117, %struct.mt76_txq** %7, align 8
  %118 = load %struct.mt7615_vif*, %struct.mt7615_vif** %5, align 8
  %119 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load %struct.mt76_txq*, %struct.mt76_txq** %7, align 8
  %122 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %121, i32 0, i32 0
  store %struct.TYPE_6__* %120, %struct.TYPE_6__** %122, align 8
  %123 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %124 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %123, i32 0, i32 0
  %125 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %126 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = call i32 @mt76_txq_init(%struct.TYPE_7__* %124, %struct.TYPE_8__* %127)
  br label %129

129:                                              ; preds = %69, %68, %47, %34
  %130 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %131 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @get_omac_idx(i32, i32) #1

declare dso_local i32 @mt7615_mcu_set_dev_info(%struct.mt7615_dev*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mt76_txq_init(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
