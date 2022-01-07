; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl2_adapter = type { i32 }

@REG_MAC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @atl2_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_vlan_mode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl2_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.atl2_adapter* %8, %struct.atl2_adapter** %5, align 8
  %9 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %10 = call i32 @atl2_irq_disable(%struct.atl2_adapter* %9)
  %11 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* @REG_MAC_CTRL, align 4
  %14 = call i32 @ATL2_READ_REG(i32* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @__atl2_vlan_mode(i32 %15, i32* %6)
  %17 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* @REG_MAC_CTRL, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ATL2_WRITE_REG(i32* %18, i32 %19, i32 %20)
  %22 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %23 = call i32 @atl2_irq_enable(%struct.atl2_adapter* %22)
  ret void
}

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atl2_irq_disable(%struct.atl2_adapter*) #1

declare dso_local i32 @ATL2_READ_REG(i32*, i32) #1

declare dso_local i32 @__atl2_vlan_mode(i32, i32*) #1

declare dso_local i32 @ATL2_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @atl2_irq_enable(%struct.atl2_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
