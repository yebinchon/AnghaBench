; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_tx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_tx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32, i32, %struct.mt76_dev }
%struct.mt76_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.mt7615_tx_free = type { i32*, i32 }
%struct.mt76_txwi_cache = type { i32* }

@MT_TX_FREE_MSDU_ID_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7615_mac_tx_free(%struct.mt7615_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mt7615_tx_free*, align 8
  %6 = alloca %struct.mt76_dev*, align 8
  %7 = alloca %struct.mt76_txwi_cache*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mt7615_tx_free*
  store %struct.mt7615_tx_free* %13, %struct.mt7615_tx_free** %5, align 8
  %14 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %14, i32 0, i32 2
  store %struct.mt76_dev* %15, %struct.mt76_dev** %6, align 8
  %16 = load i32, i32* @MT_TX_FREE_MSDU_ID_CNT, align 4
  %17 = load %struct.mt7615_tx_free*, %struct.mt7615_tx_free** %5, align 8
  %18 = getelementptr inbounds %struct.mt7615_tx_free, %struct.mt7615_tx_free* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = call i64 @FIELD_GET(i32 %16, i32 %20)
  store i64 %21, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %66, %2
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %22
  %27 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %30, i32 0, i32 1
  %32 = load %struct.mt7615_tx_free*, %struct.mt7615_tx_free** %5, align 8
  %33 = getelementptr inbounds %struct.mt7615_tx_free, %struct.mt7615_tx_free* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = call %struct.mt76_txwi_cache* @idr_remove(i32* %31, i32 %38)
  store %struct.mt76_txwi_cache* %39, %struct.mt76_txwi_cache** %7, align 8
  %40 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %7, align 8
  %44 = icmp ne %struct.mt76_txwi_cache* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %26
  br label %66

46:                                               ; preds = %26
  %47 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %48 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %7, align 8
  %49 = call i32 @mt7615_txp_skb_unmap(%struct.mt76_dev* %47, %struct.mt76_txwi_cache* %48)
  %50 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %7, align 8
  %51 = getelementptr inbounds %struct.mt76_txwi_cache, %struct.mt76_txwi_cache* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %56 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %7, align 8
  %57 = getelementptr inbounds %struct.mt76_txwi_cache, %struct.mt76_txwi_cache* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @mt76_tx_complete_skb(%struct.mt76_dev* %55, i32* %58)
  %60 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %7, align 8
  %61 = getelementptr inbounds %struct.mt76_txwi_cache, %struct.mt76_txwi_cache* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %64 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %7, align 8
  %65 = call i32 @mt76_put_txwi(%struct.mt76_dev* %63, %struct.mt76_txwi_cache* %64)
  br label %66

66:                                               ; preds = %62, %45
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %8, align 8
  br label %22

69:                                               ; preds = %22
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @dev_kfree_skb(%struct.sk_buff* %70)
  ret void
}

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mt76_txwi_cache* @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mt7615_txp_skb_unmap(%struct.mt76_dev*, %struct.mt76_txwi_cache*) #1

declare dso_local i32 @mt76_tx_complete_skb(%struct.mt76_dev*, i32*) #1

declare dso_local i32 @mt76_put_txwi(%struct.mt76_dev*, %struct.mt76_txwi_cache*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
