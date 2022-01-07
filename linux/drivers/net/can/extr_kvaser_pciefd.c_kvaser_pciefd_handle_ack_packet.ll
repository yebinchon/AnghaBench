; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_ack_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_ack_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { i64, %struct.kvaser_pciefd_can** }
%struct.kvaser_pciefd_can = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.kvaser_pciefd_rx_packet = type { i32* }

@KVASER_PCIEFD_PACKET_CHID_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KVASER_PCIEFD_APACKET_CT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_APACKET_NACK = common dso_local global i32 0, align 4
@KVASER_PCIEFD_APACKET_FLU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Packet was flushed\0A\00", align 1
@KVASER_PCIEFD_PACKET_SEQ_MSK = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_TX_NPACKETS_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_CAN_TX_MAX_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd*, %struct.kvaser_pciefd_rx_packet*)* @kvaser_pciefd_handle_ack_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_handle_ack_packet(%struct.kvaser_pciefd* %0, %struct.kvaser_pciefd_rx_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvaser_pciefd*, align 8
  %5 = alloca %struct.kvaser_pciefd_rx_packet*, align 8
  %6 = alloca %struct.kvaser_pciefd_can*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.net_device_stats*, align 8
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %4, align 8
  store %struct.kvaser_pciefd_rx_packet* %1, %struct.kvaser_pciefd_rx_packet** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %14 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @KVASER_PCIEFD_PACKET_CHID_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = and i32 %19, 7
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %4, align 8
  %24 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %132

30:                                               ; preds = %2
  %31 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %4, align 8
  %32 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %31, i32 0, i32 1
  %33 = load %struct.kvaser_pciefd_can**, %struct.kvaser_pciefd_can*** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %33, i64 %34
  %36 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %35, align 8
  store %struct.kvaser_pciefd_can* %36, %struct.kvaser_pciefd_can** %6, align 8
  %37 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %38 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @KVASER_PCIEFD_APACKET_CT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %132

46:                                               ; preds = %30
  %47 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %48 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @KVASER_PCIEFD_APACKET_NACK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %57 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %58 = call i32 @kvaser_pciefd_handle_nack_packet(%struct.kvaser_pciefd_can* %56, %struct.kvaser_pciefd_rx_packet* %57)
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %46
  %60 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %61 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @KVASER_PCIEFD_APACKET_FLU, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %70 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = call i32 @netdev_dbg(%struct.TYPE_7__* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %131

74:                                               ; preds = %59
  %75 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %76 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @KVASER_PCIEFD_PACKET_SEQ_MSK, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %83 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @can_get_echo_skb(%struct.TYPE_7__* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %89 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @KVASER_PCIEFD_KCAN_TX_NPACKETS_REG, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @ioread32(i64 %92)
  %94 = and i32 %93, 255
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* @KVASER_PCIEFD_CAN_TX_MAX_COUNT, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %74
  %100 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %101 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = call i64 @netif_queue_stopped(%struct.TYPE_7__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %108 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = call i32 @netif_wake_queue(%struct.TYPE_7__* %110)
  br label %112

112:                                              ; preds = %106, %99, %74
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %112
  %116 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %117 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store %struct.net_device_stats* %120, %struct.net_device_stats** %12, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.net_device_stats*, %struct.net_device_stats** %12, align 8
  %123 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.net_device_stats*, %struct.net_device_stats** %12, align 8
  %127 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %115, %112
  br label %131

131:                                              ; preds = %130, %68
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %45, %27
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @kvaser_pciefd_handle_nack_packet(%struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_rx_packet*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @can_get_echo_skb(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @netif_queue_stopped(%struct.TYPE_7__*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
