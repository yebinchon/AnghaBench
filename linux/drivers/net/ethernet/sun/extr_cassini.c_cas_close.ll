; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cas = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cas_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.cas*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.cas* @netdev_priv(%struct.net_device* %5)
  store %struct.cas* %6, %struct.cas** %4, align 8
  %7 = load %struct.cas*, %struct.cas** %4, align 8
  %8 = getelementptr inbounds %struct.cas, %struct.cas* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_stop_queue(%struct.net_device* %10)
  %12 = load %struct.cas*, %struct.cas** %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @cas_lock_all_save(%struct.cas* %12, i64 %13)
  %15 = load %struct.cas*, %struct.cas** %4, align 8
  %16 = getelementptr inbounds %struct.cas, %struct.cas* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.cas*, %struct.cas** %4, align 8
  %18 = call i32 @cas_reset(%struct.cas* %17, i32 0)
  %19 = load %struct.cas*, %struct.cas** %4, align 8
  %20 = call i32 @cas_phy_init(%struct.cas* %19)
  %21 = load %struct.cas*, %struct.cas** %4, align 8
  %22 = call i32 @cas_begin_auto_negotiation(%struct.cas* %21, i32* null)
  %23 = load %struct.cas*, %struct.cas** %4, align 8
  %24 = call i32 @cas_clean_rings(%struct.cas* %23)
  %25 = load %struct.cas*, %struct.cas** %4, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @cas_unlock_all_restore(%struct.cas* %25, i64 %26)
  %28 = load %struct.cas*, %struct.cas** %4, align 8
  %29 = getelementptr inbounds %struct.cas, %struct.cas* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = bitcast %struct.net_device* %33 to i8*
  %35 = call i32 @free_irq(i32 %32, i8* %34)
  %36 = load %struct.cas*, %struct.cas** %4, align 8
  %37 = call i32 @cas_spare_free(%struct.cas* %36)
  %38 = load %struct.cas*, %struct.cas** %4, align 8
  %39 = call i32 @cas_free_rxds(%struct.cas* %38)
  %40 = load %struct.cas*, %struct.cas** %4, align 8
  %41 = call i32 @cas_tx_tiny_free(%struct.cas* %40)
  %42 = load %struct.cas*, %struct.cas** %4, align 8
  %43 = getelementptr inbounds %struct.cas, %struct.cas* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  ret i32 0
}

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @cas_lock_all_save(%struct.cas*, i64) #1

declare dso_local i32 @cas_reset(%struct.cas*, i32) #1

declare dso_local i32 @cas_phy_init(%struct.cas*) #1

declare dso_local i32 @cas_begin_auto_negotiation(%struct.cas*, i32*) #1

declare dso_local i32 @cas_clean_rings(%struct.cas*) #1

declare dso_local i32 @cas_unlock_all_restore(%struct.cas*, i64) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @cas_spare_free(%struct.cas*) #1

declare dso_local i32 @cas_free_rxds(%struct.cas*) #1

declare dso_local i32 @cas_tx_tiny_free(%struct.cas*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
