; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_txq_schedule_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_txq_schedule_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, i32, %struct.mt76_sw_queue* }
%struct.mt76_sw_queue = type { i32, %struct.mt76_queue* }
%struct.mt76_queue = type { i32 }
%struct.ieee80211_txq = type { i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.mt76_txq = type { i32, i32, i32, i64, %struct.mt76_wcid* }
%struct.mt76_wcid = type { i32 }

@MT76_RESET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MT_WCID_FLAG_PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, i32)* @mt76_txq_schedule_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_txq_schedule_list(%struct.mt76_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76_sw_queue*, align 8
  %6 = alloca %struct.mt76_queue*, align 8
  %7 = alloca %struct.ieee80211_txq*, align 8
  %8 = alloca %struct.mt76_txq*, align 8
  %9 = alloca %struct.mt76_wcid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_txq*, align 8
  %13 = alloca %struct.ieee80211_sta*, align 8
  %14 = alloca %struct.ieee80211_vif*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %17, i32 0, i32 2
  %19 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %19, i64 %21
  store %struct.mt76_sw_queue* %22, %struct.mt76_sw_queue** %5, align 8
  %23 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %5, align 8
  %24 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %23, i32 0, i32 1
  %25 = load %struct.mt76_queue*, %struct.mt76_queue** %24, align 8
  store %struct.mt76_queue* %25, %struct.mt76_queue** %6, align 8
  store i32 0, i32* %10, align 4
  %26 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %27 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_bh(i32* %27)
  br label %29

29:                                               ; preds = %2, %69, %124
  store i32 0, i32* %11, align 4
  %30 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %5, align 8
  %31 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %134

35:                                               ; preds = %29
  %36 = load i32, i32* @MT76_RESET, align 4
  %37 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %134

44:                                               ; preds = %35
  %45 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call %struct.ieee80211_txq* @ieee80211_next_txq(i32 %47, i32 %48)
  store %struct.ieee80211_txq* %49, %struct.ieee80211_txq** %7, align 8
  %50 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %7, align 8
  %51 = icmp ne %struct.ieee80211_txq* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %134

53:                                               ; preds = %44
  %54 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.mt76_txq*
  store %struct.mt76_txq* %57, %struct.mt76_txq** %8, align 8
  %58 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %59 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %58, i32 0, i32 4
  %60 = load %struct.mt76_wcid*, %struct.mt76_wcid** %59, align 8
  store %struct.mt76_wcid* %60, %struct.mt76_wcid** %9, align 8
  %61 = load %struct.mt76_wcid*, %struct.mt76_wcid** %9, align 8
  %62 = icmp ne %struct.mt76_wcid* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load i32, i32* @MT_WCID_FLAG_PS, align 4
  %65 = load %struct.mt76_wcid*, %struct.mt76_wcid** %9, align 8
  %66 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %65, i32 0, i32 0
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %29

70:                                               ; preds = %63, %53
  %71 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %72 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %70
  %76 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %77 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %75
  %81 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %82 = call %struct.ieee80211_txq* @mtxq_to_txq(%struct.mt76_txq* %81)
  store %struct.ieee80211_txq* %82, %struct.ieee80211_txq** %12, align 8
  %83 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %12, align 8
  %84 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %83, i32 0, i32 2
  %85 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %84, align 8
  store %struct.ieee80211_sta* %85, %struct.ieee80211_sta** %13, align 8
  %86 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %12, align 8
  %87 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %86, i32 0, i32 1
  %88 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %87, align 8
  store %struct.ieee80211_vif* %88, %struct.ieee80211_vif** %14, align 8
  %89 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %90 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %15, align 4
  %92 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %12, align 8
  %93 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %16, align 4
  %95 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %96 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %98 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_bh(i32* %98)
  %100 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %14, align 8
  %101 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %102 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @ieee80211_send_bar(%struct.ieee80211_vif* %100, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %108 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %107, i32 0, i32 0
  %109 = call i32 @spin_lock_bh(i32* %108)
  br label %110

110:                                              ; preds = %80, %75, %70
  %111 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %112 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %5, align 8
  %113 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %114 = call i64 @mt76_txq_send_burst(%struct.mt76_dev* %111, %struct.mt76_sw_queue* %112, %struct.mt76_txq* %113, i32* %11)
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %10, align 4
  %119 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %120 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %119, i32 0, i32 1
  %121 = call i64 @skb_queue_empty(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %110
  store i32 1, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %110
  %125 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %126 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %7, align 8
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @ieee80211_return_txq(i32 %127, %struct.ieee80211_txq* %128, i32 %132)
  br label %29

134:                                              ; preds = %52, %41, %34
  %135 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %136 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %135, i32 0, i32 0
  %137 = call i32 @spin_unlock_bh(i32* %136)
  %138 = load i32, i32* %10, align 4
  ret i32 %138
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.ieee80211_txq* @ieee80211_next_txq(i32, i32) #1

declare dso_local %struct.ieee80211_txq* @mtxq_to_txq(%struct.mt76_txq*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_send_bar(%struct.ieee80211_vif*, i32, i32, i32) #1

declare dso_local i64 @mt76_txq_send_burst(%struct.mt76_dev*, %struct.mt76_sw_queue*, %struct.mt76_txq*, i32*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @ieee80211_return_txq(i32, %struct.ieee80211_txq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
