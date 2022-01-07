; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.b44 = type { i32, i32, i32, i32 }

@B44_FLAG_EXTERNAL_PHY = common dso_local global i32 0, align 4
@B44_FLAG_WOL_ENABLE = common dso_local global i32 0, align 4
@B44_PARTIAL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @b44_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.b44*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.b44* @netdev_priv(%struct.net_device* %4)
  store %struct.b44* %5, %struct.b44** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.b44*, %struct.b44** %3, align 8
  %9 = getelementptr inbounds %struct.b44, %struct.b44* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @phy_stop(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.b44*, %struct.b44** %3, align 8
  %21 = getelementptr inbounds %struct.b44, %struct.b44* %20, i32 0, i32 3
  %22 = call i32 @napi_disable(i32* %21)
  %23 = load %struct.b44*, %struct.b44** %3, align 8
  %24 = getelementptr inbounds %struct.b44, %struct.b44* %23, i32 0, i32 2
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load %struct.b44*, %struct.b44** %3, align 8
  %27 = getelementptr inbounds %struct.b44, %struct.b44* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.b44*, %struct.b44** %3, align 8
  %30 = call i32 @b44_halt(%struct.b44* %29)
  %31 = load %struct.b44*, %struct.b44** %3, align 8
  %32 = call i32 @b44_free_rings(%struct.b44* %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @netif_carrier_off(%struct.net_device* %33)
  %35 = load %struct.b44*, %struct.b44** %3, align 8
  %36 = getelementptr inbounds %struct.b44, %struct.b44* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @free_irq(i32 %40, %struct.net_device* %41)
  %43 = load %struct.b44*, %struct.b44** %3, align 8
  %44 = getelementptr inbounds %struct.b44, %struct.b44* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @B44_FLAG_WOL_ENABLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %19
  %50 = load %struct.b44*, %struct.b44** %3, align 8
  %51 = load i32, i32* @B44_PARTIAL_RESET, align 4
  %52 = call i32 @b44_init_hw(%struct.b44* %50, i32 %51)
  %53 = load %struct.b44*, %struct.b44** %3, align 8
  %54 = call i32 @b44_setup_wol(%struct.b44* %53)
  br label %55

55:                                               ; preds = %49, %19
  %56 = load %struct.b44*, %struct.b44** %3, align 8
  %57 = call i32 @b44_free_consistent(%struct.b44* %56)
  ret i32 0
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @b44_halt(%struct.b44*) #1

declare dso_local i32 @b44_free_rings(%struct.b44*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @b44_init_hw(%struct.b44*, i32) #1

declare dso_local i32 @b44_setup_wol(%struct.b44*) #1

declare dso_local i32 @b44_free_consistent(%struct.b44*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
