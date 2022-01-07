; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32, %struct.TYPE_12__, %struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.hns3_nic_priv = type { i32 }
%struct.netdev_queue = type { i32 }

@HNS3_RING_TX_RING_HEAD_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"wrong head (%d, %d-%d)\0A\00", align 1
@HNS3_MAX_BD_PER_PKT = common dso_local global i64 0, align 8
@HNS3_NIC_STATE_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns3_clean_tx_ring(%struct.hns3_enet_ring* %0) #0 {
  %2 = alloca %struct.hns3_enet_ring*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hns3_nic_priv*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %2, align 8
  %9 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %10 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %9, i32 0, i32 2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %3, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.hns3_nic_priv* %18, %struct.hns3_nic_priv** %4, align 8
  %19 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %20 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HNS3_RING_TX_RING_HEAD_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = call i32 (...) @rmb()
  %28 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %29 = call i64 @is_ring_empty(%struct.hns3_enet_ring* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %34 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %1
  br label %153

38:                                               ; preds = %31
  %39 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @is_valid_clean_head(%struct.hns3_enet_ring* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %38
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %51 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %54 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %55)
  %57 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %58 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %57, i32 0, i32 3
  %59 = call i32 @u64_stats_update_begin(i32* %58)
  %60 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %61 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %66 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %65, i32 0, i32 3
  %67 = call i32 @u64_stats_update_end(i32* %66)
  br label %153

68:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %69 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @hns3_nic_reclaim_desc(%struct.hns3_enet_ring* %69, i32 %70, i32* %6, i32* %7)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %74 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %73, i32 0, i32 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %72
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %82 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %81, i32 0, i32 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %80
  store i32 %87, i32* %85, align 4
  %88 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %89 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %88, i32 0, i32 3
  %90 = call i32 @u64_stats_update_begin(i32* %89)
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %93 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %91
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %99 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %97
  store i32 %102, i32* %100, align 4
  %103 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %104 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %103, i32 0, i32 3
  %105 = call i32 @u64_stats_update_end(i32* %104)
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %108 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %107, i32 0, i32 2
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %106, i32 %111)
  store %struct.netdev_queue* %112, %struct.netdev_queue** %5, align 8
  %113 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %68
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = call i64 @netif_carrier_ok(%struct.net_device* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %125 = call i64 @ring_space(%struct.hns3_enet_ring* %124)
  %126 = load i64, i64* @HNS3_MAX_BD_PER_PKT, align 8
  %127 = icmp sgt i64 %125, %126
  br label %128

128:                                              ; preds = %123, %119, %68
  %129 = phi i1 [ false, %119 ], [ false, %68 ], [ %127, %123 ]
  %130 = zext i1 %129 to i32
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %128
  %134 = call i32 (...) @smp_mb()
  %135 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %136 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %133
  %139 = load i32, i32* @HNS3_NIC_STATE_DOWN, align 4
  %140 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %141 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %140, i32 0, i32 0
  %142 = call i32 @test_bit(i32 %139, i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %138
  %145 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %146 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %145)
  %147 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %148 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %144, %138, %133
  br label %153

153:                                              ; preds = %37, %47, %152, %128
  ret void
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @is_ring_empty(%struct.hns3_enet_ring*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_valid_clean_head(%struct.hns3_enet_ring*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @hns3_nic_reclaim_desc(%struct.hns3_enet_ring*, i32, i32*, i32*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @ring_space(%struct.hns3_enet_ring*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
