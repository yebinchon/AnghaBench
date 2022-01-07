; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_data_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_data_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { i64, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.can_priv }
%struct.can_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.kvaser_pciefd_rx_packet = type { i32*, i32 }
%struct.sk_buff = type { i32 }
%struct.canfd_frame = type { i32, i64, i32, i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.can_frame = type { i32 }

@KVASER_PCIEFD_PACKET_CHID_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_FDF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_BRS = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_ESI = common dso_local global i32 0, align 4
@CANFD_ESI = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_IDE = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_DLC_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd*, %struct.kvaser_pciefd_rx_packet*, i32*)* @kvaser_pciefd_handle_data_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_handle_data_packet(%struct.kvaser_pciefd* %0, %struct.kvaser_pciefd_rx_packet* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvaser_pciefd*, align 8
  %6 = alloca %struct.kvaser_pciefd_rx_packet*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.canfd_frame*, align 8
  %10 = alloca %struct.can_priv*, align 8
  %11 = alloca %struct.net_device_stats*, align 8
  %12 = alloca %struct.skb_shared_hwtstamps*, align 8
  %13 = alloca i64, align 8
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %5, align 8
  store %struct.kvaser_pciefd_rx_packet* %1, %struct.kvaser_pciefd_rx_packet** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %15 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @KVASER_PCIEFD_PACKET_CHID_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = and i32 %20, 7
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %25 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %199

31:                                               ; preds = %3
  %32 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %33 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.can_priv* %38, %struct.can_priv** %10, align 8
  %39 = load %struct.can_priv*, %struct.can_priv** %10, align 8
  %40 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store %struct.net_device_stats* %42, %struct.net_device_stats** %11, align 8
  %43 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %44 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @KVASER_PCIEFD_RPACKET_FDF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %96

51:                                               ; preds = %31
  %52 = load %struct.can_priv*, %struct.can_priv** %10, align 8
  %53 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = call %struct.sk_buff* @alloc_canfd_skb(%struct.TYPE_5__* %54, %struct.canfd_frame** %9)
  store %struct.sk_buff* %55, %struct.sk_buff** %8, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.net_device_stats*, %struct.net_device_stats** %11, align 8
  %60 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %199

65:                                               ; preds = %51
  %66 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %67 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @KVASER_PCIEFD_RPACKET_BRS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load i32, i32* @CANFD_BRS, align 4
  %76 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %77 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %65
  %81 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %82 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @KVASER_PCIEFD_RPACKET_ESI, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load i32, i32* @CANFD_ESI, align 4
  %91 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %92 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %80
  br label %112

96:                                               ; preds = %31
  %97 = load %struct.can_priv*, %struct.can_priv** %10, align 8
  %98 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = bitcast %struct.canfd_frame** %9 to %struct.can_frame**
  %101 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_5__* %99, %struct.can_frame** %100)
  store %struct.sk_buff* %101, %struct.sk_buff** %8, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = icmp ne %struct.sk_buff* %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %96
  %105 = load %struct.net_device_stats*, %struct.net_device_stats** %11, align 8
  %106 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %199

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %95
  %113 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %114 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CAN_EFF_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %121 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %123 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @KVASER_PCIEFD_RPACKET_IDE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %112
  %131 = load i32, i32* @CAN_EFF_FLAG, align 4
  %132 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %133 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %112
  %137 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %138 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @KVASER_PCIEFD_RPACKET_DLC_SHIFT, align 4
  %143 = ashr i32 %141, %142
  %144 = call i64 @can_dlc2len(i32 %143)
  %145 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %146 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %148 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @KVASER_PCIEFD_RPACKET_RTR, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %136
  %156 = load i32, i32* @CAN_RTR_FLAG, align 4
  %157 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %158 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %170

161:                                              ; preds = %136
  %162 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %163 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %167 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @memcpy(i32 %164, i32* %165, i64 %168)
  br label %170

170:                                              ; preds = %161, %155
  %171 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %172 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %171)
  store %struct.skb_shared_hwtstamps* %172, %struct.skb_shared_hwtstamps** %12, align 8
  %173 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %174 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 %175, 1000
  %177 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %178 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @div_u64(i32 %176, i32 %179)
  %181 = call i32 @ns_to_ktime(i32 %180)
  %182 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %12, align 8
  %183 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  %184 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %185 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.net_device_stats*, %struct.net_device_stats** %11, align 8
  %188 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %186
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 4
  %193 = load %struct.net_device_stats*, %struct.net_device_stats** %11, align 8
  %194 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %198 = call i32 @netif_rx(%struct.sk_buff* %197)
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %170, %104, %58, %28
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local %struct.sk_buff* @alloc_canfd_skb(%struct.TYPE_5__*, %struct.canfd_frame**) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_5__*, %struct.can_frame**) #1

declare dso_local i64 @can_dlc2len(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
