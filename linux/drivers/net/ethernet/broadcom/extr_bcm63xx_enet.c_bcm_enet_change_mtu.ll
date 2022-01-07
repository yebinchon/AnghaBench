; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_enet_priv = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bcm_enet_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_enet_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcm_enet_priv* %9, %struct.bcm_enet_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i64 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %25 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @ETH_FCS_LEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %31 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 4
  %34 = call i32 @ALIGN(i64 %29, i32 %33)
  %35 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %36 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %17, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
