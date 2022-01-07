; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_release_buffered_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_release_buffered_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76_dev* }
%struct.mt76_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.mt76_dev*, %struct.mt76_queue*)* }
%struct.mt76_queue = type { i32 }
%struct.TYPE_3__ = type { %struct.mt76_queue* }
%struct.ieee80211_sta = type { %struct.ieee80211_txq** }
%struct.ieee80211_txq = type { i64 }
%struct.sk_buff = type { i32 }
%struct.mt76_txq = type { i64 }

@MT_TXQ_PSD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_release_buffered_frames(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mt76_dev*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.mt76_queue*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_txq*, align 8
  %18 = alloca %struct.mt76_txq*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %20, i32 0, i32 0
  %22 = load %struct.mt76_dev*, %struct.mt76_dev** %21, align 8
  store %struct.mt76_dev* %22, %struct.mt76_dev** %13, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  %23 = load %struct.mt76_dev*, %struct.mt76_dev** %13, align 8
  %24 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i64, i64* @MT_TXQ_PSD, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.mt76_queue*, %struct.mt76_queue** %28, align 8
  store %struct.mt76_queue* %29, %struct.mt76_queue** %15, align 8
  %30 = load %struct.mt76_queue*, %struct.mt76_queue** %15, align 8
  %31 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_bh(i32* %31)
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %90, %6
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ false, %33 ], [ %38, %36 ]
  br i1 %40, label %41, label %95

41:                                               ; preds = %39
  %42 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %42, i32 0, i32 0
  %44 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %44, i64 %46
  %48 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %47, align 8
  store %struct.ieee80211_txq* %48, %struct.ieee80211_txq** %17, align 8
  %49 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %17, align 8
  %50 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.mt76_txq*
  store %struct.mt76_txq* %52, %struct.mt76_txq** %18, align 8
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %41
  br label %90

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %86, %57
  %59 = load %struct.mt76_dev*, %struct.mt76_dev** %13, align 8
  %60 = load %struct.mt76_txq*, %struct.mt76_txq** %18, align 8
  %61 = call %struct.sk_buff* @mt76_txq_dequeue(%struct.mt76_dev* %59, %struct.mt76_txq* %60, i32 1)
  store %struct.sk_buff* %61, %struct.sk_buff** %19, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %89

65:                                               ; preds = %58
  %66 = load %struct.mt76_txq*, %struct.mt76_txq** %18, align 8
  %67 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.mt76_txq*, %struct.mt76_txq** %18, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %73 = call i32 @mt76_check_agg_ssn(%struct.mt76_txq* %71, %struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %10, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.mt76_dev*, %struct.mt76_dev** %13, align 8
  %81 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %83 = call i32 @mt76_queue_ps_skb(%struct.mt76_dev* %80, %struct.ieee80211_sta* %81, %struct.sk_buff* %82, i32 0)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %85, %struct.sk_buff** %14, align 8
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %58, label %89

89:                                               ; preds = %86, %64
  br label %90

90:                                               ; preds = %89, %56
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %9, align 4
  %94 = ashr i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %33

95:                                               ; preds = %39
  %96 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %97 = icmp ne %struct.sk_buff* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load %struct.mt76_dev*, %struct.mt76_dev** %13, align 8
  %100 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %102 = call i32 @mt76_queue_ps_skb(%struct.mt76_dev* %99, %struct.ieee80211_sta* %100, %struct.sk_buff* %101, i32 1)
  %103 = load %struct.mt76_dev*, %struct.mt76_dev** %13, align 8
  %104 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32 (%struct.mt76_dev*, %struct.mt76_queue*)*, i32 (%struct.mt76_dev*, %struct.mt76_queue*)** %106, align 8
  %108 = load %struct.mt76_dev*, %struct.mt76_dev** %13, align 8
  %109 = load %struct.mt76_queue*, %struct.mt76_queue** %15, align 8
  %110 = call i32 %107(%struct.mt76_dev* %108, %struct.mt76_queue* %109)
  br label %114

111:                                              ; preds = %95
  %112 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %113 = call i32 @ieee80211_sta_eosp(%struct.ieee80211_sta* %112)
  br label %114

114:                                              ; preds = %111, %98
  %115 = load %struct.mt76_queue*, %struct.mt76_queue** %15, align 8
  %116 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock_bh(i32* %116)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @mt76_txq_dequeue(%struct.mt76_dev*, %struct.mt76_txq*, i32) #1

declare dso_local i32 @mt76_check_agg_ssn(%struct.mt76_txq*, %struct.sk_buff*) #1

declare dso_local i32 @mt76_queue_ps_skb(%struct.mt76_dev*, %struct.ieee80211_sta*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_sta_eosp(%struct.ieee80211_sta*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
