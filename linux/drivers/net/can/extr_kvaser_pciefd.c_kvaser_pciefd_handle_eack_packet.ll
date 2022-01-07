; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_eack_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_eack_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { i64, %struct.kvaser_pciefd_can** }
%struct.kvaser_pciefd_can = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.kvaser_pciefd_rx_packet = type { i32* }

@KVASER_PCIEFD_PACKET_CHID_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KVASER_PCIEFD_APACKET_FLU = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_TX_NPACKETS_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_CTRL_EFLUSH = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_CTRL_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_PACKET_SEQ_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd*, %struct.kvaser_pciefd_rx_packet*)* @kvaser_pciefd_handle_eack_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_handle_eack_packet(%struct.kvaser_pciefd* %0, %struct.kvaser_pciefd_rx_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvaser_pciefd*, align 8
  %5 = alloca %struct.kvaser_pciefd_rx_packet*, align 8
  %6 = alloca %struct.kvaser_pciefd_can*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device_stats*, align 8
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %4, align 8
  store %struct.kvaser_pciefd_rx_packet* %1, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %12 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %13 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @KVASER_PCIEFD_PACKET_CHID_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = and i32 %18, 7
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %4, align 8
  %23 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %106

29:                                               ; preds = %2
  %30 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %4, align 8
  %31 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %30, i32 0, i32 1
  %32 = load %struct.kvaser_pciefd_can**, %struct.kvaser_pciefd_can*** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %32, i64 %33
  %35 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %34, align 8
  store %struct.kvaser_pciefd_can* %35, %struct.kvaser_pciefd_can** %6, align 8
  %36 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %37 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @KVASER_PCIEFD_APACKET_FLU, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %29
  %45 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %46 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @KVASER_PCIEFD_KCAN_TX_NPACKETS_REG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @ioread32(i64 %49)
  %51 = and i32 %50, 255
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load i32, i32* @KVASER_PCIEFD_KCAN_CTRL_EFLUSH, align 4
  %57 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %58 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @KVASER_PCIEFD_KCAN_CTRL_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @iowrite32(i32 %56, i64 %61)
  br label %63

63:                                               ; preds = %55, %44
  br label %105

64:                                               ; preds = %29
  %65 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %66 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @KVASER_PCIEFD_PACKET_SEQ_MSK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %9, align 4
  %72 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %73 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @can_get_echo_skb(%struct.TYPE_6__* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %79 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store %struct.net_device_stats* %82, %struct.net_device_stats** %11, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.net_device_stats*, %struct.net_device_stats** %11, align 8
  %85 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.net_device_stats*, %struct.net_device_stats** %11, align 8
  %89 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %93 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = call i64 @netif_queue_stopped(%struct.TYPE_6__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %64
  %99 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %100 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = call i32 @netif_wake_queue(%struct.TYPE_6__* %102)
  br label %104

104:                                              ; preds = %98, %64
  br label %105

105:                                              ; preds = %104, %63
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %26
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @can_get_echo_skb(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
