; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_beacon.c_mt7603_update_beacon_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_beacon.c_mt7603_update_beacon_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.mt7603_dev = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mt7603_vif = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i32 }

@MT_TXQ_BEACON = common dso_local global i32 0, align 4
@MT_DMA_FQCR0 = common dso_local global i32 0, align 4
@MT_DMA_FQCR0_BUSY = common dso_local global i32 0, align 4
@MT_DMA_FQCR0_TARGET_WCID = common dso_local global i32 0, align 4
@MT_DMA_FQCR0_TARGET_QID = common dso_local global i32 0, align 4
@MT_TXQ_CAB = common dso_local global i64 0, align 8
@MT_DMA_FQCR0_DEST_PORT_ID = common dso_local global i32 0, align 4
@MT_DMA_FQCR0_DEST_QUEUE_ID = common dso_local global i32 0, align 4
@MT7603_WATCHDOG_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @mt7603_update_beacon_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_update_beacon_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.mt7603_dev*, align 8
  %8 = alloca %struct.mt7603_vif*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mt7603_dev*
  store %struct.mt7603_dev* %11, %struct.mt7603_dev** %7, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.mt7603_vif*
  store %struct.mt7603_vif* %15, %struct.mt7603_vif** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %16 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %17 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mt7603_vif*, %struct.mt7603_vif** %8, align 8
  %21 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = and i32 %19, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %90

27:                                               ; preds = %3
  %28 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %29 = call i32 @mt76_hw(%struct.mt7603_dev* %28)
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %31 = call %struct.sk_buff* @ieee80211_beacon_get(i32 %29, %struct.ieee80211_vif* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %9, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %90

35:                                               ; preds = %27
  %36 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %37 = load i32, i32* @MT_TXQ_BEACON, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = load %struct.mt7603_vif*, %struct.mt7603_vif** %8, align 8
  %40 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @mt76_tx_queue_skb(%struct.mt7603_dev* %36, i32 %37, %struct.sk_buff* %38, %struct.TYPE_10__* %41, i32* null)
  %43 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %44 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %47 = load i32, i32* @MT_DMA_FQCR0, align 4
  %48 = load i32, i32* @MT_DMA_FQCR0_BUSY, align 4
  %49 = load i32, i32* @MT_DMA_FQCR0_TARGET_WCID, align 4
  %50 = load %struct.mt7603_vif*, %struct.mt7603_vif** %8, align 8
  %51 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FIELD_PREP(i32 %49, i32 %54)
  %56 = or i32 %48, %55
  %57 = load i32, i32* @MT_DMA_FQCR0_TARGET_QID, align 4
  %58 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %59 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i64, i64* @MT_TXQ_CAB, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @FIELD_PREP(i32 %57, i32 %67)
  %69 = or i32 %56, %68
  %70 = load i32, i32* @MT_DMA_FQCR0_DEST_PORT_ID, align 4
  %71 = call i32 @FIELD_PREP(i32 %70, i32 3)
  %72 = or i32 %69, %71
  %73 = load i32, i32* @MT_DMA_FQCR0_DEST_QUEUE_ID, align 4
  %74 = call i32 @FIELD_PREP(i32 %73, i32 8)
  %75 = or i32 %72, %74
  %76 = call i32 @mt76_wr(%struct.mt7603_dev* %46, i32 %47, i32 %75)
  %77 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %78 = load i32, i32* @MT_DMA_FQCR0, align 4
  %79 = load i32, i32* @MT_DMA_FQCR0_BUSY, align 4
  %80 = call i32 @mt76_poll(%struct.mt7603_dev* %77, i32 %78, i32 %79, i32 0, i32 5000)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %35
  %83 = load i32, i32* @MT7603_WATCHDOG_TIMEOUT, align 4
  %84 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %85 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %35
  %87 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %88 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_bh(i32* %88)
  br label %90

90:                                               ; preds = %86, %34, %26
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @mt76_hw(%struct.mt7603_dev*) #1

declare dso_local i32 @mt76_tx_queue_skb(%struct.mt7603_dev*, i32, %struct.sk_buff*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_poll(%struct.mt7603_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
