; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.ioc3_private = type { %struct.ioc3_ethregs* }
%struct.ioc3_ethregs = type { i32 }

@ETCDC_COLLCNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @ioc3_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @ioc3_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ioc3_private*, align 8
  %4 = alloca %struct.ioc3_ethregs*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %5)
  store %struct.ioc3_private* %6, %struct.ioc3_private** %3, align 8
  %7 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %8 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %7, i32 0, i32 0
  %9 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %8, align 8
  store %struct.ioc3_ethregs* %9, %struct.ioc3_ethregs** %4, align 8
  %10 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %11 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %10, i32 0, i32 0
  %12 = call i32 @readl(i32* %11)
  %13 = load i32, i32* @ETCDC_COLLCNT_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  ret %struct.net_device_stats* %21
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
