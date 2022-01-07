; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i32, %struct.skge_hw* }
%struct.skge_hw = type { i32, %struct.net_device** }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @skge_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_phy_reset(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %6 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %7 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %6, i32 0, i32 2
  %8 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  store %struct.skge_hw* %8, %struct.skge_hw** %3, align 8
  %9 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %10 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %13 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %12, i32 0, i32 1
  %14 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.net_device*, %struct.net_device** %14, i64 %16
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %5, align 8
  %19 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %20 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netif_stop_queue(i32 %21)
  %23 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %24 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_carrier_off(i32 %25)
  %27 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %28 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %31 = call i64 @is_genesis(%struct.skge_hw* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @genesis_reset(%struct.skge_hw* %34, i32 %35)
  %37 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @genesis_mac_init(%struct.skge_hw* %37, i32 %38)
  br label %47

40:                                               ; preds = %1
  %41 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @yukon_reset(%struct.skge_hw* %41, i32 %42)
  %44 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @yukon_init(%struct.skge_hw* %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %49 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_bh(i32* %49)
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 @skge_set_multicast(%struct.net_device* %51)
  ret void
}

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @is_genesis(%struct.skge_hw*) #1

declare dso_local i32 @genesis_reset(%struct.skge_hw*, i32) #1

declare dso_local i32 @genesis_mac_init(%struct.skge_hw*, i32) #1

declare dso_local i32 @yukon_reset(%struct.skge_hw*, i32) #1

declare dso_local i32 @yukon_init(%struct.skge_hw*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @skge_set_multicast(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
