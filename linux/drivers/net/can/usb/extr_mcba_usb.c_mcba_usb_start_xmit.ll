; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.mcba_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.can_frame = type { i32, i32, i32 }
%struct.mcba_usb_ctx = type { i32 }
%struct.mcba_usb_msg_can = type { i32, i32, i64, i64, i32 }
%struct.mcba_usb_msg = type { i32 }

@MBCA_CMD_TRANSMIT_MESSAGE_EV = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@MCBA_SIDL_EXID_MASK = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@MCBA_DLC_RTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @mcba_usb_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcba_usb_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mcba_priv*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca %struct.mcba_usb_ctx*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mcba_usb_msg_can, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.mcba_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.mcba_priv* %14, %struct.mcba_priv** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.can_frame*
  store %struct.can_frame* %18, %struct.can_frame** %7, align 8
  store %struct.mcba_usb_ctx* null, %struct.mcba_usb_ctx** %8, align 8
  %19 = load %struct.mcba_priv*, %struct.mcba_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.net_device_stats* %22, %struct.net_device_stats** %9, align 8
  %23 = bitcast %struct.mcba_usb_msg_can* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 32, i1 false)
  %24 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %12, i32 0, i32 4
  %25 = load i32, i32* @MBCA_CMD_TRANSMIT_MESSAGE_EV, align 4
  store i32 %25, i32* %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i64 @can_dropped_invalid_skb(%struct.net_device* %26, %struct.sk_buff* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %141

32:                                               ; preds = %2
  %33 = load %struct.mcba_priv*, %struct.mcba_priv** %6, align 8
  %34 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %35 = call %struct.mcba_usb_ctx* @mcba_usb_get_free_ctx(%struct.mcba_priv* %33, %struct.can_frame* %34)
  store %struct.mcba_usb_ctx* %35, %struct.mcba_usb_ctx** %8, align 8
  %36 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %8, align 8
  %37 = icmp ne %struct.mcba_usb_ctx* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %39, i32* %3, align 4
  br label %141

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.mcba_priv*, %struct.mcba_priv** %6, align 8
  %43 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @can_put_echo_skb(%struct.sk_buff* %41, %struct.TYPE_3__* %44, i32 %47)
  %49 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %50 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CAN_EFF_FLAG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %40
  %56 = load i32, i32* @MCBA_SIDL_EXID_MASK, align 4
  store i32 %56, i32* %10, align 4
  %57 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %58 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 536608768
  %61 = ashr i32 %60, 13
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %65 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 196608
  %68 = ashr i32 %67, 16
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %12, i32 0, i32 3
  %73 = call i32 @put_unaligned_be16(i32 %71, i64* %72)
  %74 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %75 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 65535
  %78 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %12, i32 0, i32 2
  %79 = call i32 @put_unaligned_be16(i32 %77, i64* %78)
  br label %90

80:                                               ; preds = %40
  %81 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %82 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CAN_SFF_MASK, align 4
  %85 = and i32 %83, %84
  %86 = shl i32 %85, 5
  %87 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %12, i32 0, i32 3
  %88 = call i32 @put_unaligned_be16(i32 %86, i64* %87)
  %89 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %12, i32 0, i32 2
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %80, %55
  %91 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %92 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %12, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %12, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %98 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %12, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @memcpy(i32 %96, i32 %99, i32 %101)
  %103 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %104 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CAN_RTR_FLAG, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %90
  %110 = load i32, i32* @MCBA_DLC_RTR_MASK, align 4
  %111 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %12, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %109, %90
  %115 = load %struct.mcba_priv*, %struct.mcba_priv** %6, align 8
  %116 = bitcast %struct.mcba_usb_msg_can* %12 to %struct.mcba_usb_msg*
  %117 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %8, align 8
  %118 = call i32 @mcba_usb_xmit(%struct.mcba_priv* %115, %struct.mcba_usb_msg* %116, %struct.mcba_usb_ctx* %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %124

122:                                              ; preds = %114
  %123 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %123, i32* %3, align 4
  br label %141

124:                                              ; preds = %121
  %125 = load %struct.mcba_priv*, %struct.mcba_priv** %6, align 8
  %126 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %8, align 8
  %129 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @can_free_echo_skb(%struct.TYPE_3__* %127, i32 %130)
  %132 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %8, align 8
  %133 = call i32 @mcba_usb_free_ctx(%struct.mcba_usb_ctx* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = call i32 @dev_kfree_skb(%struct.sk_buff* %134)
  %136 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %137 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %124, %122, %38, %30
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.mcba_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local %struct.mcba_usb_ctx* @mcba_usb_get_free_ctx(%struct.mcba_priv*, %struct.can_frame*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i64*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mcba_usb_xmit(%struct.mcba_priv*, %struct.mcba_usb_msg*, %struct.mcba_usb_ctx*) #1

declare dso_local i32 @can_free_echo_skb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mcba_usb_free_ctx(%struct.mcba_usb_ctx*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
