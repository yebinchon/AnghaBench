; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_prepare_tx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_prepare_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_tx_packet = type { i32*, i32 }
%struct.kvaser_pciefd_can = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.canfd_frame = type { i32, i32, i32, i32 }

@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_TPACKET_SMS = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_RTR = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_IDE = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_DLC_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_TPACKET_AREQ = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_FDF = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_BRS = common dso_local global i32 0, align 4
@CANFD_ESI = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_ESI = common dso_local global i32 0, align 4
@KVASER_PCIEFD_PACKET_SEQ_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_can*, %struct.sk_buff*)* @kvaser_pciefd_prepare_tx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_prepare_tx_packet(%struct.kvaser_pciefd_tx_packet* %0, %struct.kvaser_pciefd_can* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.kvaser_pciefd_tx_packet*, align 8
  %5 = alloca %struct.kvaser_pciefd_can*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.canfd_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvaser_pciefd_tx_packet* %0, %struct.kvaser_pciefd_tx_packet** %4, align 8
  store %struct.kvaser_pciefd_can* %1, %struct.kvaser_pciefd_can** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.canfd_frame*
  store %struct.canfd_frame* %13, %struct.canfd_frame** %7, align 8
  %14 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %5, align 8
  %15 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %18 = call i32 @memset(%struct.kvaser_pciefd_tx_packet* %17, i32 0, i32 16)
  %19 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %5, align 8
  %20 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load i32, i32* @KVASER_PCIEFD_TPACKET_SMS, align 4
  %28 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %29 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %26, %3
  %35 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %36 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CAN_RTR_FLAG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load i32, i32* @KVASER_PCIEFD_RPACKET_RTR, align 4
  %43 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %44 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %34
  %50 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %51 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CAN_EFF_FLAG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load i32, i32* @KVASER_PCIEFD_RPACKET_IDE, align 4
  %58 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %59 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %57
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %56, %49
  %65 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %66 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CAN_EFF_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %71 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 4
  %76 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %77 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @can_len2dlc(i32 %78)
  %80 = load i32, i32* @KVASER_PCIEFD_RPACKET_DLC_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %83 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @KVASER_PCIEFD_TPACKET_AREQ, align 4
  %89 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %90 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = call i64 @can_is_canfd_skb(%struct.sk_buff* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %136

98:                                               ; preds = %64
  %99 = load i32, i32* @KVASER_PCIEFD_RPACKET_FDF, align 4
  %100 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %101 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %99
  store i32 %105, i32* %103, align 4
  %106 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %107 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CANFD_BRS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %98
  %113 = load i32, i32* @KVASER_PCIEFD_RPACKET_BRS, align 4
  %114 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %115 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %113
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %112, %98
  %121 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %122 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CANFD_ESI, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load i32, i32* @KVASER_PCIEFD_RPACKET_ESI, align 4
  %129 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %130 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %127, %120
  br label %136

136:                                              ; preds = %135, %64
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @KVASER_PCIEFD_PACKET_SEQ_MSK, align 4
  %139 = and i32 %137, %138
  %140 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %141 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %139
  store i32 %145, i32* %143, align 4
  %146 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %147 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %8, align 4
  %149 = load %struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_tx_packet** %4, align 8
  %150 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %153 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @memcpy(i32 %151, i32 %154, i32 %155)
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @DIV_ROUND_UP(i32 %157, i32 4)
  ret i32 %158
}

declare dso_local i32 @memset(%struct.kvaser_pciefd_tx_packet*, i32, i32) #1

declare dso_local i32 @can_len2dlc(i32) #1

declare dso_local i64 @can_is_canfd_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
