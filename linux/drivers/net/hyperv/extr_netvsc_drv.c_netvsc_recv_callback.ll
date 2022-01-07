; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_recv_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_recv_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.netvsc_device = type { i32 }
%struct.netvsc_channel = type { i32, %struct.TYPE_8__, %struct.netvsc_stats, %struct.vmbus_channel* }
%struct.TYPE_8__ = type { i64 }
%struct.netvsc_stats = type { i32, i32, i32, i32, i32 }
%struct.vmbus_channel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.net_device_context = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i64 }

@NETREG_REGISTERED = common dso_local global i64 0, align 8
@NVSP_STAT_FAIL = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@NVSP_STAT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netvsc_recv_callback(%struct.net_device* %0, %struct.netvsc_device* %1, %struct.netvsc_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  %7 = alloca %struct.netvsc_channel*, align 8
  %8 = alloca %struct.net_device_context*, align 8
  %9 = alloca %struct.vmbus_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.netvsc_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %6, align 8
  store %struct.netvsc_channel* %2, %struct.netvsc_channel** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %13)
  store %struct.net_device_context* %14, %struct.net_device_context** %8, align 8
  %15 = load %struct.netvsc_channel*, %struct.netvsc_channel** %7, align 8
  %16 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %15, i32 0, i32 3
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %16, align 8
  store %struct.vmbus_channel* %17, %struct.vmbus_channel** %9, align 8
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %9, align 8
  %19 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NETREG_REGISTERED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @NVSP_STAT_FAIL, align 4
  store i32 %29, i32* %4, align 4
  br label %101

30:                                               ; preds = %3
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load %struct.netvsc_channel*, %struct.netvsc_channel** %7, align 8
  %33 = call %struct.sk_buff* @netvsc_alloc_recv_skb(%struct.net_device* %31, %struct.netvsc_channel* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %11, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.net_device_context*, %struct.net_device_context** %8, align 8
  %42 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @NVSP_STAT_FAIL, align 4
  store i32 %46, i32* %4, align 4
  br label %101

47:                                               ; preds = %30
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @skb_record_rx_queue(%struct.sk_buff* %48, i32 %49)
  %51 = load %struct.netvsc_channel*, %struct.netvsc_channel** %7, align 8
  %52 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %51, i32 0, i32 2
  store %struct.netvsc_stats* %52, %struct.netvsc_stats** %12, align 8
  %53 = load %struct.netvsc_stats*, %struct.netvsc_stats** %12, align 8
  %54 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %53, i32 0, i32 0
  %55 = call i32 @u64_stats_update_begin(i32* %54)
  %56 = load %struct.netvsc_stats*, %struct.netvsc_stats** %12, align 8
  %57 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.netvsc_channel*, %struct.netvsc_channel** %7, align 8
  %61 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.netvsc_stats*, %struct.netvsc_stats** %12, align 8
  %65 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PACKET_BROADCAST, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %47
  %76 = load %struct.netvsc_stats*, %struct.netvsc_stats** %12, align 8
  %77 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %92

80:                                               ; preds = %47
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PACKET_MULTICAST, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.netvsc_stats*, %struct.netvsc_stats** %12, align 8
  %88 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %80
  br label %92

92:                                               ; preds = %91, %75
  %93 = load %struct.netvsc_stats*, %struct.netvsc_stats** %12, align 8
  %94 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %93, i32 0, i32 0
  %95 = call i32 @u64_stats_update_end(i32* %94)
  %96 = load %struct.netvsc_channel*, %struct.netvsc_channel** %7, align 8
  %97 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %96, i32 0, i32 0
  %98 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %99 = call i32 @napi_gro_receive(i32* %97, %struct.sk_buff* %98)
  %100 = load i32, i32* @NVSP_STAT_SUCCESS, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %92, %40, %28
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netvsc_alloc_recv_skb(%struct.net_device*, %struct.netvsc_channel*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
