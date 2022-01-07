; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_nack_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_nack_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.kvaser_pciefd_rx_packet = type { i32* }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i64, i32 }

@KVASER_PCIEFD_APACKET_ABL = common dso_local global i32 0, align 4
@CAN_ERR_LOSTARB = common dso_local global i32 0, align 4
@CAN_ERR_ACK = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No memory left for err_skb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_rx_packet*)* @kvaser_pciefd_handle_nack_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pciefd_handle_nack_packet(%struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_rx_packet* %1) #0 {
  %3 = alloca %struct.kvaser_pciefd_can*, align 8
  %4 = alloca %struct.kvaser_pciefd_rx_packet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca %struct.can_frame*, align 8
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %3, align 8
  store %struct.kvaser_pciefd_rx_packet* %1, %struct.kvaser_pciefd_rx_packet** %4, align 8
  %8 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %9 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.net_device_stats* %12, %struct.net_device_stats** %6, align 8
  %13 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %14 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_7__* %16, %struct.can_frame** %7)
  store %struct.sk_buff* %17, %struct.sk_buff** %5, align 8
  %18 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %19 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %4, align 8
  %23 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @KVASER_PCIEFD_APACKET_ABL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* @CAN_ERR_LOSTARB, align 4
  %35 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %36 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %30
  %40 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %41 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %56

46:                                               ; preds = %2
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @CAN_ERR_ACK, align 4
  %51 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %52 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %55, %39
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %61 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %62 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %66 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %75 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @netif_rx(%struct.sk_buff* %78)
  br label %90

80:                                               ; preds = %56
  %81 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %82 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %86 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = call i32 @netdev_warn(%struct.TYPE_7__* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %80, %59
  ret void
}

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_7__*, %struct.can_frame**) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
