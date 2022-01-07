; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mv643xx_eth_private = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"fatal error on re-opening device after MTU change\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mv643xx_eth_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv643xx_eth_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.mv643xx_eth_private* %8, %struct.mv643xx_eth_private** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %13 = call i32 @mv643xx_eth_recalc_skb_size(%struct.mv643xx_eth_private* %12)
  %14 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %15 = call i32 @tx_set_rate(%struct.mv643xx_eth_private* %14, i32 1000000000, i32 16777216)
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @mv643xx_eth_stop(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i64 @mv643xx_eth_open(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %20
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mv643xx_eth_recalc_skb_size(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @tx_set_rate(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mv643xx_eth_stop(%struct.net_device*) #1

declare dso_local i64 @mv643xx_eth_open(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
