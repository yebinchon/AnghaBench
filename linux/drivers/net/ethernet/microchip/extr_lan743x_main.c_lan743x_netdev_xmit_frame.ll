; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_netdev_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_netdev_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.lan743x_adapter = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @lan743x_netdev_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_netdev_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.lan743x_adapter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.lan743x_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.lan743x_adapter* %7, %struct.lan743x_adapter** %5, align 8
  %8 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call i32 @lan743x_tx_xmit_frame(i32* %11, %struct.sk_buff* %12)
  ret i32 %13
}

declare dso_local %struct.lan743x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lan743x_tx_xmit_frame(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
