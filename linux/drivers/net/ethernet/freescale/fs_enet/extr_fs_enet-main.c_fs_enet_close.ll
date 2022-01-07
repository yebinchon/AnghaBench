; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_enet_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_enet_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fs_enet_private = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fs_enet_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_enet_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fs_enet_private*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %5)
  store %struct.fs_enet_private* %6, %struct.fs_enet_private** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_carrier_off(%struct.net_device* %9)
  %11 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %12 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %11, i32 0, i32 5
  %13 = call i32 @napi_disable(i32* %12)
  %14 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %15 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %14, i32 0, i32 4
  %16 = call i32 @cancel_work_sync(i32* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @phy_stop(i32 %19)
  %21 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %22 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %21, i32 0, i32 1
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %26 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %25, i32 0, i32 2
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %29 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %31, align 8
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 %32(%struct.net_device* %33)
  %35 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %36 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %39 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %38, i32 0, i32 1
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @phy_disconnect(i32 %44)
  %46 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %47 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @free_irq(i32 %48, %struct.net_device* %49)
  ret i32 0
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
