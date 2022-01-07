; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.virtnet_info = type { %struct.send_queue* }
%struct.send_queue = type { %struct.TYPE_10__, %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.netdev_queue = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Unexpected TXQ (%d) queue failure: %d\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.virtnet_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.send_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %13)
  store %struct.virtnet_info* %14, %struct.virtnet_info** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.virtnet_info*, %struct.virtnet_info** %6, align 8
  %18 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %17, i32 0, i32 0
  %19 = load %struct.send_queue*, %struct.send_queue** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %19, i64 %21
  store %struct.send_queue* %22, %struct.send_queue** %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %23, i32 %24)
  store %struct.netdev_queue* %25, %struct.netdev_queue** %10, align 8
  %26 = call i32 (...) @netdev_xmit_more()
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %31 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %35 = call i32 @free_old_xmit_skbs(%struct.send_queue* %34, i32 0)
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %2
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %43 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call i32 @virtqueue_enable_cb_delayed(%struct.TYPE_11__* %44)
  br label %46

46:                                               ; preds = %41, %38, %2
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @skb_tx_timestamp(%struct.sk_buff* %47)
  %49 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @xmit_skb(%struct.send_queue* %49, %struct.sk_buff* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %46
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = call i64 (...) @net_ratelimit()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dev_warn(i32* %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %55
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %75)
  %77 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %77, i32* %3, align 4
  br label %168

78:                                               ; preds = %46
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @skb_orphan(%struct.sk_buff* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = call i32 @nf_reset_ct(%struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %81, %78
  %87 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %88 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %93 = add nsw i64 2, %92
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %132

95:                                               ; preds = %86
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @netif_stop_subqueue(%struct.net_device* %96, i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %131, label %101

101:                                              ; preds = %95
  %102 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %103 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %102, i32 0, i32 1
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = call i32 @virtqueue_enable_cb_delayed(%struct.TYPE_11__* %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %101
  %112 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %113 = call i32 @free_old_xmit_skbs(%struct.send_queue* %112, i32 0)
  %114 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %115 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %120 = add nsw i64 2, %119
  %121 = icmp sge i64 %118, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %111
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @netif_start_subqueue(%struct.net_device* %123, i32 %124)
  %126 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %127 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %126, i32 0, i32 1
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = call i32 @virtqueue_disable_cb(%struct.TYPE_11__* %128)
  br label %130

130:                                              ; preds = %122, %111
  br label %131

131:                                              ; preds = %130, %101, %95
  br label %132

132:                                              ; preds = %131, %86
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %137 = call i64 @netif_xmit_stopped(%struct.netdev_queue* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %135, %132
  %140 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %141 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = call i64 @virtqueue_kick_prepare(%struct.TYPE_11__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %139
  %146 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %147 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = call i64 @virtqueue_notify(%struct.TYPE_11__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  %152 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %153 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = call i32 @u64_stats_update_begin(i32* %154)
  %156 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %157 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load %struct.send_queue*, %struct.send_queue** %8, align 8
  %162 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = call i32 @u64_stats_update_end(i32* %163)
  br label %165

165:                                              ; preds = %151, %145, %139
  br label %166

166:                                              ; preds = %165, %135
  %167 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %69
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i32 @free_old_xmit_skbs(%struct.send_queue*, i32) #1

declare dso_local i32 @virtqueue_enable_cb_delayed(%struct.TYPE_11__*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @xmit_skb(%struct.send_queue*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_subqueue(%struct.net_device*, i32) #1

declare dso_local i32 @netif_start_subqueue(%struct.net_device*, i32) #1

declare dso_local i32 @virtqueue_disable_cb(%struct.TYPE_11__*) #1

declare dso_local i64 @netif_xmit_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @virtqueue_kick_prepare(%struct.TYPE_11__*) #1

declare dso_local i64 @virtqueue_notify(%struct.TYPE_11__*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
