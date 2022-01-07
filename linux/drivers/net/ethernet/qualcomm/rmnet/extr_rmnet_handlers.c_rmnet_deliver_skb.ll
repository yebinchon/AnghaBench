; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_handlers.c_rmnet_deliver_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_handlers.c_rmnet_deliver_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.rmnet_priv = type { i32 }

@PACKET_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @rmnet_deliver_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmnet_deliver_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rmnet_priv*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.rmnet_priv* @netdev_priv(i32 %6)
  store %struct.rmnet_priv* %7, %struct.rmnet_priv** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call i32 @skb_reset_transport_header(%struct.sk_buff* %8)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i32 @skb_reset_network_header(%struct.sk_buff* %10)
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rmnet_vnd_rx_fixup(%struct.sk_buff* %12, i32 %15)
  %17 = load i32, i32* @PACKET_HOST, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = call i32 @skb_set_mac_header(%struct.sk_buff* %20, i32 0)
  %22 = load %struct.rmnet_priv*, %struct.rmnet_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rmnet_priv, %struct.rmnet_priv* %22, i32 0, i32 0
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = call i32 @gro_cells_receive(i32* %23, %struct.sk_buff* %24)
  ret void
}

declare dso_local %struct.rmnet_priv* @netdev_priv(i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @rmnet_vnd_rx_fixup(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @gro_cells_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
