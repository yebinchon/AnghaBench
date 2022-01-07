; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.bcm_sysport_priv = type { i32, %struct.bcm_sysport_tx_ring** }
%struct.bcm_sysport_tx_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* @bcm_sysport_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.bcm_sysport_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm_sysport_tx_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.bcm_sysport_priv* %14, %struct.bcm_sysport_priv** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i32 @netdev_uses_dsa(%struct.net_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @netdev_pick_tx(%struct.net_device* %21, %struct.sk_buff* %22, i32* null)
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @BRCM_TAG_GET_QUEUE(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @BRCM_TAG_GET_PORT(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %8, align 8
  %30 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %29, i32 0, i32 1
  %31 = load %struct.bcm_sysport_tx_ring**, %struct.bcm_sysport_tx_ring*** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %8, align 8
  %35 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul i32 %33, %36
  %38 = add i32 %32, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %31, i64 %39
  %41 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %40, align 8
  store %struct.bcm_sysport_tx_ring* %41, %struct.bcm_sysport_tx_ring** %10, align 8
  %42 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %10, align 8
  %43 = icmp ne %struct.bcm_sysport_tx_ring* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %24
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i32 @netdev_pick_tx(%struct.net_device* %49, %struct.sk_buff* %50, i32* null)
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %24
  %53 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %10, align 8
  %54 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %48, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @netdev_uses_dsa(%struct.net_device*) #1

declare dso_local i32 @netdev_pick_tx(%struct.net_device*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @BRCM_TAG_GET_QUEUE(i32) #1

declare dso_local i32 @BRCM_TAG_GET_PORT(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
