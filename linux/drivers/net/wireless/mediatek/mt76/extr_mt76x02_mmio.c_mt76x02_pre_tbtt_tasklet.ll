; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mmio.c_mt76x02_pre_tbtt_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mmio.c_mt76x02_pre_tbtt_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mt76_queue* }
%struct.mt76_queue = type { i32 }
%struct.beacon_bc_data = type { i32, i32* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i64 }
%struct.mt76x02_vif = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@MT_TXQ_PSD = common dso_local global i64 0, align 8
@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@mt76x02_update_beacon_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mt76x02_pre_tbtt_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_pre_tbtt_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.mt76_queue*, align 8
  %5 = alloca %struct.beacon_bc_data, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.mt76x02_vif*, align 8
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.mt76x02_dev*
  store %struct.mt76x02_dev* %12, %struct.mt76x02_dev** %3, align 8
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load i64, i64* @MT_TXQ_PSD, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.mt76_queue*, %struct.mt76_queue** %19, align 8
  store %struct.mt76_queue* %20, %struct.mt76_queue** %4, align 8
  %21 = bitcast %struct.beacon_bc_data* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %23 = call %struct.TYPE_10__* @mt76_hw(%struct.mt76x02_dev* %22)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %112

31:                                               ; preds = %1
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %33 = call i32 @mt76x02_resync_beacon_timer(%struct.mt76x02_dev* %32)
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %35 = call %struct.TYPE_10__* @mt76_hw(%struct.mt76x02_dev* %34)
  %36 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %37 = load i32, i32* @mt76x02_update_beacon_iter, align 4
  %38 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %39 = call i32 @ieee80211_iterate_active_interfaces_atomic(%struct.TYPE_10__* %35, i32 %36, i32 %37, %struct.mt76x02_dev* %38)
  %40 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %40, i32 0, i32 0
  %42 = call i32 @mt76_csa_check(%struct.TYPE_11__* %41)
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %112

49:                                               ; preds = %31
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %51 = call i32 @mt76x02_enqueue_buffered_bc(%struct.mt76x02_dev* %50, %struct.beacon_bc_data* %5, i32 8)
  %52 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 0
  %53 = call i32 @skb_queue_len(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %112

56:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %80, %56
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %80

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mt76_skb_set_moredata(i32 %78, i32 0)
  br label %80

80:                                               ; preds = %72, %71
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %57

83:                                               ; preds = %57
  %84 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %85 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %84, i32 0, i32 0
  %86 = call i32 @spin_lock_bh(i32* %85)
  br label %87

87:                                               ; preds = %91, %83
  %88 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 0
  %89 = call %struct.sk_buff* @__skb_dequeue(i32* %88)
  store %struct.sk_buff* %89, %struct.sk_buff** %6, align 8
  %90 = icmp ne %struct.sk_buff* %89, null
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %92)
  store %struct.ieee80211_tx_info* %93, %struct.ieee80211_tx_info** %8, align 8
  %94 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %95 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %96, align 8
  store %struct.ieee80211_vif* %97, %struct.ieee80211_vif** %9, align 8
  %98 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %99 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.mt76x02_vif*
  store %struct.mt76x02_vif* %101, %struct.mt76x02_vif** %10, align 8
  %102 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %103 = load i64, i64* @MT_TXQ_PSD, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %10, align 8
  %106 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %105, i32 0, i32 0
  %107 = call i32 @mt76_tx_queue_skb(%struct.mt76x02_dev* %102, i64 %103, %struct.sk_buff* %104, i32* %106, i32* null)
  br label %87

108:                                              ; preds = %87
  %109 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %110 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock_bh(i32* %110)
  br label %112

112:                                              ; preds = %108, %55, %48, %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_10__* @mt76_hw(%struct.mt76x02_dev*) #2

declare dso_local i32 @mt76x02_resync_beacon_timer(%struct.mt76x02_dev*) #2

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(%struct.TYPE_10__*, i32, i32, %struct.mt76x02_dev*) #2

declare dso_local i32 @mt76_csa_check(%struct.TYPE_11__*) #2

declare dso_local i32 @mt76x02_enqueue_buffered_bc(%struct.mt76x02_dev*, %struct.beacon_bc_data*, i32) #2

declare dso_local i32 @skb_queue_len(i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @mt76_skb_set_moredata(i32, i32) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #2

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #2

declare dso_local i32 @mt76_tx_queue_skb(%struct.mt76x02_dev*, i64, %struct.sk_buff*, i32*, i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
