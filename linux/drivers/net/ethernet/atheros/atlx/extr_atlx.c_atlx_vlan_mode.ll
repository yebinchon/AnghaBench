; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atlx.c_atlx_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atlx.c_atlx_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atlx_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@REG_MAC_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @atlx_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atlx_vlan_mode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atlx_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.atlx_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.atlx_adapter* %9, %struct.atlx_adapter** %5, align 8
  %10 = load %struct.atlx_adapter*, %struct.atlx_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.atlx_adapter*, %struct.atlx_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_MAC_CTRL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @__atlx_vlan_mode(i32 %21, i32* %7)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.atlx_adapter*, %struct.atlx_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @REG_MAC_CTRL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @iowrite32(i32 %23, i64 %29)
  %31 = load %struct.atlx_adapter*, %struct.atlx_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local %struct.atlx_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @__atlx_vlan_mode(i32, i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
