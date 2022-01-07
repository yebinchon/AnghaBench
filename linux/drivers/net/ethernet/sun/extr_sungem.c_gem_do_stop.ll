; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_do_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_do_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gem = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @gem_do_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_do_stop(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gem*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.gem* @netdev_priv(%struct.net_device* %6)
  store %struct.gem* %7, %struct.gem** %5, align 8
  %8 = load %struct.gem*, %struct.gem** %5, align 8
  %9 = call i32 @gem_netif_stop(%struct.gem* %8)
  %10 = load %struct.gem*, %struct.gem** %5, align 8
  %11 = call i32 @gem_disable_ints(%struct.gem* %10)
  %12 = load %struct.gem*, %struct.gem** %5, align 8
  %13 = getelementptr inbounds %struct.gem, %struct.gem* %12, i32 0, i32 2
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = load %struct.gem*, %struct.gem** %5, align 8
  %16 = getelementptr inbounds %struct.gem, %struct.gem* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.gem*, %struct.gem** %5, align 8
  %18 = call i32 @gem_stop_dma(%struct.gem* %17)
  %19 = call i32 @msleep(i32 10)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.gem*, %struct.gem** %5, align 8
  %24 = call i32 @gem_reset(%struct.gem* %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = call i32 @msleep(i32 10)
  %27 = load %struct.gem*, %struct.gem** %5, align 8
  %28 = call i32 @gem_clean_rings(%struct.gem* %27)
  %29 = load %struct.gem*, %struct.gem** %5, align 8
  %30 = getelementptr inbounds %struct.gem, %struct.gem* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = bitcast %struct.net_device* %34 to i8*
  %36 = call i32 @free_irq(i32 %33, i8* %35)
  %37 = load %struct.gem*, %struct.gem** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @gem_stop_phy(%struct.gem* %37, i32 %38)
  %40 = load %struct.gem*, %struct.gem** %5, align 8
  %41 = getelementptr inbounds %struct.gem, %struct.gem* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @pci_disable_device(%struct.TYPE_2__* %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %25
  %47 = load %struct.gem*, %struct.gem** %5, align 8
  %48 = call i32 @gem_put_cell(%struct.gem* %47)
  br label %49

49:                                               ; preds = %46, %25
  ret void
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gem_netif_stop(%struct.gem*) #1

declare dso_local i32 @gem_disable_ints(%struct.gem*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @gem_stop_dma(%struct.gem*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gem_reset(%struct.gem*) #1

declare dso_local i32 @gem_clean_rings(%struct.gem*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @gem_stop_phy(%struct.gem*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_2__*) #1

declare dso_local i32 @gem_put_cell(%struct.gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
