; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de_private = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"NIC status %08x mode %08x sia %08x desc %u/%u/%u\0A\00", align 1
@MacStatus = common dso_local global i32 0, align 4
@MacMode = common dso_local global i32 0, align 4
@SIAStatus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @de_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.de_private* @netdev_priv(%struct.net_device* %5)
  store %struct.de_private* %6, %struct.de_private** %3, align 8
  %7 = load %struct.de_private*, %struct.de_private** %3, align 8
  %8 = getelementptr inbounds %struct.de_private, %struct.de_private* %7, i32 0, i32 5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* @MacStatus, align 4
  %14 = call i32 @dr32(i32 %13)
  %15 = load i32, i32* @MacMode, align 4
  %16 = call i32 @dr32(i32 %15)
  %17 = load i32, i32* @SIAStatus, align 4
  %18 = call i32 @dr32(i32 %17)
  %19 = load %struct.de_private*, %struct.de_private** %3, align 8
  %20 = getelementptr inbounds %struct.de_private, %struct.de_private* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.de_private*, %struct.de_private** %3, align 8
  %23 = getelementptr inbounds %struct.de_private, %struct.de_private* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.de_private*, %struct.de_private** %3, align 8
  %26 = getelementptr inbounds %struct.de_private, %struct.de_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @netdev_dbg(%struct.net_device* %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.de_private*, %struct.de_private** %3, align 8
  %30 = getelementptr inbounds %struct.de_private, %struct.de_private* %29, i32 0, i32 1
  %31 = call i32 @del_timer_sync(i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @disable_irq(i32 %32)
  %34 = load %struct.de_private*, %struct.de_private** %3, align 8
  %35 = getelementptr inbounds %struct.de_private, %struct.de_private* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.de_private*, %struct.de_private** %3, align 8
  %38 = call i32 @de_stop_hw(%struct.de_private* %37)
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 @netif_stop_queue(%struct.net_device* %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @netif_carrier_off(%struct.net_device* %41)
  %43 = load %struct.de_private*, %struct.de_private** %3, align 8
  %44 = getelementptr inbounds %struct.de_private, %struct.de_private* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @enable_irq(i32 %46)
  %48 = load %struct.de_private*, %struct.de_private** %3, align 8
  %49 = call i32 @__de_get_stats(%struct.de_private* %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @synchronize_irq(i32 %50)
  %52 = load %struct.de_private*, %struct.de_private** %3, align 8
  %53 = call i32 @de_clean_rings(%struct.de_private* %52)
  %54 = load %struct.de_private*, %struct.de_private** %3, align 8
  %55 = call i32 @de_init_rings(%struct.de_private* %54)
  %56 = load %struct.de_private*, %struct.de_private** %3, align 8
  %57 = call i32 @de_init_hw(%struct.de_private* %56)
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = call i32 @netif_wake_queue(%struct.net_device* %58)
  ret void
}

declare dso_local %struct.de_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dr32(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @de_stop_hw(%struct.de_private*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @__de_get_stats(%struct.de_private*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @de_clean_rings(%struct.de_private*) #1

declare dso_local i32 @de_init_rings(%struct.de_private*) #1

declare dso_local i32 @de_init_hw(%struct.de_private*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
