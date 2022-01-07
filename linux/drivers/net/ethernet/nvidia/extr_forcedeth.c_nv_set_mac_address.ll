; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @nv_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fe_priv*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.fe_priv* %9, %struct.fe_priv** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %7, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_valid_ether_addr(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EADDRNOTAVAIL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @memcpy(i32 %23, i32 %26, i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i64 @netif_running(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %20
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @netif_tx_lock_bh(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @netif_addr_lock(%struct.net_device* %35)
  %37 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %38 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @nv_stop_rx(%struct.net_device* %40)
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @nv_copy_mac_to_hw(%struct.net_device* %42)
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @nv_start_rx(%struct.net_device* %44)
  %46 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %47 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @netif_addr_unlock(%struct.net_device* %49)
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @netif_tx_unlock_bh(%struct.net_device* %51)
  br label %56

53:                                               ; preds = %20
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i32 @nv_copy_mac_to_hw(%struct.net_device* %54)
  br label %56

56:                                               ; preds = %53, %32
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @netif_addr_lock(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @nv_stop_rx(%struct.net_device*) #1

declare dso_local i32 @nv_copy_mac_to_hw(%struct.net_device*) #1

declare dso_local i32 @nv_start_rx(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @netif_addr_unlock(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
