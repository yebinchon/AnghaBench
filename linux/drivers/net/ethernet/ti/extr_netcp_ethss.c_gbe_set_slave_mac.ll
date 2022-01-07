; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_set_slave_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_set_slave_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_slave = type { i32 }
%struct.gbe_intf = type { %struct.net_device* }
%struct.net_device = type { i32 }

@port_regs = common dso_local global i32 0, align 4
@sa_hi = common dso_local global i32 0, align 4
@sa_lo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_slave*, %struct.gbe_intf*)* @gbe_set_slave_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbe_set_slave_mac(%struct.gbe_slave* %0, %struct.gbe_intf* %1) #0 {
  %3 = alloca %struct.gbe_slave*, align 8
  %4 = alloca %struct.gbe_intf*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.gbe_slave* %0, %struct.gbe_slave** %3, align 8
  store %struct.gbe_intf* %1, %struct.gbe_intf** %4, align 8
  %6 = load %struct.gbe_intf*, %struct.gbe_intf** %4, align 8
  %7 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mac_hi(i32 %11)
  %13 = load %struct.gbe_slave*, %struct.gbe_slave** %3, align 8
  %14 = load i32, i32* @port_regs, align 4
  %15 = load i32, i32* @sa_hi, align 4
  %16 = call i32 @GBE_REG_ADDR(%struct.gbe_slave* %13, i32 %14, i32 %15)
  %17 = call i32 @writel(i32 %12, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mac_lo(i32 %20)
  %22 = load %struct.gbe_slave*, %struct.gbe_slave** %3, align 8
  %23 = load i32, i32* @port_regs, align 4
  %24 = load i32, i32* @sa_lo, align 4
  %25 = call i32 @GBE_REG_ADDR(%struct.gbe_slave* %22, i32 %23, i32 %24)
  %26 = call i32 @writel(i32 %21, i32 %25)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @mac_hi(i32) #1

declare dso_local i32 @GBE_REG_ADDR(%struct.gbe_slave*, i32, i32) #1

declare dso_local i32 @mac_lo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
