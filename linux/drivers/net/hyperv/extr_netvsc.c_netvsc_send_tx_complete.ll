; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_send_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_send_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netvsc_device = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.netvsc_stats }
%struct.netvsc_stats = type { i32, i32, i32 }
%struct.vmbus_channel = type { i32 }
%struct.vmpacket_descriptor = type { i64 }
%struct.sk_buff = type { i64 }
%struct.net_device_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hv_netvsc_packet = type { i64, i64, i64, i64 }
%struct.netdev_queue = type { i32 }

@NETVSC_INVALID_INDEX = common dso_local global i64 0, align 8
@RING_AVAIL_PERCENT_HIWATER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.netvsc_device*, %struct.vmbus_channel*, %struct.vmpacket_descriptor*, i32)* @netvsc_send_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_send_tx_complete(%struct.net_device* %0, %struct.netvsc_device* %1, %struct.vmbus_channel* %2, %struct.vmpacket_descriptor* %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netvsc_device*, align 8
  %8 = alloca %struct.vmbus_channel*, align 8
  %9 = alloca %struct.vmpacket_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.net_device_context*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hv_netvsc_packet*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.netvsc_stats*, align 8
  %18 = alloca %struct.netdev_queue*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %7, align 8
  store %struct.vmbus_channel* %2, %struct.vmbus_channel** %8, align 8
  store %struct.vmpacket_descriptor* %3, %struct.vmpacket_descriptor** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %9, align 8
  %20 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.sk_buff*
  store %struct.sk_buff* %22, %struct.sk_buff** %11, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %23)
  store %struct.net_device_context* %24, %struct.net_device_context** %12, align 8
  store i64 0, i64* %13, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = call i64 @likely(%struct.sk_buff* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %80

28:                                               ; preds = %5
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.hv_netvsc_packet*
  store %struct.hv_netvsc_packet* %32, %struct.hv_netvsc_packet** %15, align 8
  %33 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %15, align 8
  %34 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* @NETVSC_INVALID_INDEX, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call i32 @netvsc_free_send_slot(%struct.netvsc_device* %40, i64 %41)
  br label %43

43:                                               ; preds = %39, %28
  %44 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %15, align 8
  %45 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %13, align 8
  %47 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %48 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store %struct.netvsc_stats* %52, %struct.netvsc_stats** %17, align 8
  %53 = load %struct.netvsc_stats*, %struct.netvsc_stats** %17, align 8
  %54 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %53, i32 0, i32 0
  %55 = call i32 @u64_stats_update_begin(i32* %54)
  %56 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %15, align 8
  %57 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.netvsc_stats*, %struct.netvsc_stats** %17, align 8
  %60 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %15, align 8
  %66 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.netvsc_stats*, %struct.netvsc_stats** %17, align 8
  %69 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.netvsc_stats*, %struct.netvsc_stats** %17, align 8
  %75 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %74, i32 0, i32 0
  %76 = call i32 @u64_stats_update_end(i32* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @napi_consume_skb(%struct.sk_buff* %77, i32 %78)
  br label %80

80:                                               ; preds = %43, %5
  %81 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %82 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %81, i32 0, i32 3
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @atomic_dec_return(i32* %86)
  store i32 %87, i32* %14, align 4
  %88 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %89 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %80
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %98 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %97, i32 0, i32 1
  %99 = call i32 @wake_up(i32* %98)
  br label %100

100:                                              ; preds = %96, %93
  br label %131

101:                                              ; preds = %80
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %102, i64 %103)
  store %struct.netdev_queue* %104, %struct.netdev_queue** %18, align 8
  %105 = load %struct.netdev_queue*, %struct.netdev_queue** %18, align 8
  %106 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %101
  %109 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %110 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %108
  %114 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %115 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %114, i32 0, i32 0
  %116 = call i64 @hv_get_avail_to_write_percent(i32* %115)
  %117 = load i64, i64* @RING_AVAIL_PERCENT_HIWATER, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %14, align 4
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %122, label %130

122:                                              ; preds = %119, %113
  %123 = load %struct.netdev_queue*, %struct.netdev_queue** %18, align 8
  %124 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %123)
  %125 = load %struct.net_device_context*, %struct.net_device_context** %12, align 8
  %126 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %122, %119, %108, %101
  br label %131

131:                                              ; preds = %130, %100
  ret void
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @netvsc_free_send_slot(%struct.netvsc_device*, i64) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @napi_consume_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i64) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @hv_get_avail_to_write_percent(i32*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
