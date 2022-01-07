; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_command.c_rmnet_map_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_command.c_rmnet_map_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, %struct.net_device*)* }
%struct.rmnet_port = type { i32 }
%struct.rmnet_map_control_command = type { i8 }

@RMNET_FLAGS_INGRESS_MAP_CKSUMV4 = common dso_local global i32 0, align 4
@ETH_P_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8, %struct.rmnet_port*)* @rmnet_map_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmnet_map_send_ack(%struct.sk_buff* %0, i8 zeroext %1, %struct.rmnet_port* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.rmnet_port*, align 8
  %7 = alloca %struct.rmnet_map_control_command*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i8 %1, i8* %5, align 1
  store %struct.rmnet_port* %2, %struct.rmnet_port** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.rmnet_port*, %struct.rmnet_port** %6, align 8
  %13 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RMNET_FLAGS_INGRESS_MAP_CKSUMV4, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %22, 4
  %24 = call i32 @skb_trim(%struct.sk_buff* %19, i64 %23)
  br label %25

25:                                               ; preds = %18, %3
  %26 = load i32, i32* @ETH_P_MAP, align 4
  %27 = call i32 @htons(i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.rmnet_map_control_command* @RMNET_MAP_GET_CMD_START(%struct.sk_buff* %30)
  store %struct.rmnet_map_control_command* %31, %struct.rmnet_map_control_command** %7, align 8
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 3
  %35 = trunc i32 %34 to i8
  %36 = load %struct.rmnet_map_control_command*, %struct.rmnet_map_control_command** %7, align 8
  %37 = getelementptr inbounds %struct.rmnet_map_control_command, %struct.rmnet_map_control_command* %36, i32 0, i32 0
  store i8 %35, i8* %37, align 1
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = call i32 @netif_tx_lock(%struct.net_device* %38)
  %40 = load %struct.net_device*, %struct.net_device** %8, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.sk_buff*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)** %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = call i32 %44(%struct.sk_buff* %45, %struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = call i32 @netif_tx_unlock(%struct.net_device* %48)
  ret void
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.rmnet_map_control_command* @RMNET_MAP_GET_CMD_START(%struct.sk_buff*) #1

declare dso_local i32 @netif_tx_lock(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
