; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.de_private = type { i32, i32 }

@DE_REGS_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @de_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.de_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.de_private* @netdev_priv(%struct.net_device* %8)
  store %struct.de_private* %9, %struct.de_private** %7, align 8
  %10 = load i32, i32* @DE_REGS_VER, align 4
  %11 = shl i32 %10, 2
  %12 = load %struct.de_private*, %struct.de_private** %7, align 8
  %13 = getelementptr inbounds %struct.de_private, %struct.de_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  %16 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.de_private*, %struct.de_private** %7, align 8
  %19 = getelementptr inbounds %struct.de_private, %struct.de_private* %18, i32 0, i32 1
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.de_private*, %struct.de_private** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @__de_get_regs(%struct.de_private* %21, i8* %22)
  %24 = load %struct.de_private*, %struct.de_private** %7, align 8
  %25 = getelementptr inbounds %struct.de_private, %struct.de_private* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock_irq(i32* %25)
  ret void
}

declare dso_local %struct.de_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__de_get_regs(%struct.de_private*, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
