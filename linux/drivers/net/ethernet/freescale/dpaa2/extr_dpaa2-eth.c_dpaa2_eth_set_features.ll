; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dpaa2_eth_priv = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @dpaa2_eth_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpaa2_eth_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.dpaa2_eth_priv* %11, %struct.dpaa2_eth_priv** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @set_rx_csum(%struct.dpaa2_eth_priv* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %40 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %47 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @set_tx_csum(%struct.dpaa2_eth_priv* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %37
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %59, %34
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_rx_csum(%struct.dpaa2_eth_priv*, i32) #1

declare dso_local i32 @set_tx_csum(%struct.dpaa2_eth_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
