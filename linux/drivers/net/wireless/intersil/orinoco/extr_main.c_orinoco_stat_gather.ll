; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_stat_gather.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_stat_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hermes_rx_descriptor = type { i32, i32 }
%struct.orinoco_private = type { i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sk_buff*, %struct.hermes_rx_descriptor*)* @orinoco_stat_gather to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orinoco_stat_gather(%struct.net_device* %0, %struct.sk_buff* %1, %struct.hermes_rx_descriptor* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hermes_rx_descriptor*, align 8
  %7 = alloca %struct.orinoco_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.hermes_rx_descriptor* %2, %struct.hermes_rx_descriptor** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %8)
  store %struct.orinoco_private* %9, %struct.orinoco_private** %7, align 8
  %10 = load %struct.orinoco_private*, %struct.orinoco_private** %7, align 8
  %11 = call i64 @SPY_NUMBER(%struct.orinoco_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i64 @skb_mac_header(%struct.sk_buff* %15)
  %17 = load i64, i64* @ETH_ALEN, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.hermes_rx_descriptor*, %struct.hermes_rx_descriptor** %6, align 8
  %20 = getelementptr inbounds %struct.hermes_rx_descriptor, %struct.hermes_rx_descriptor* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hermes_rx_descriptor*, %struct.hermes_rx_descriptor** %6, align 8
  %23 = getelementptr inbounds %struct.hermes_rx_descriptor, %struct.hermes_rx_descriptor* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @orinoco_spy_gather(%struct.net_device* %14, i64 %18, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %13, %3
  ret void
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @SPY_NUMBER(%struct.orinoco_private*) #1

declare dso_local i32 @orinoco_spy_gather(%struct.net_device*, i64, i32, i32) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
