; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }
%struct.net_device = type { i32 }
%struct.b44 = type { i32, i32, i32, i32 }

@B44_FLAG_WOL_ENABLE = common dso_local global i32 0, align 4
@B44_PARTIAL_RESET = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*, i32)* @b44_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_suspend(%struct.ssb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.b44*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %9 = call %struct.net_device* @ssb_get_drvdata(%struct.ssb_device* %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.b44* @netdev_priv(%struct.net_device* %10)
  store %struct.b44* %11, %struct.b44** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call i32 @netif_running(%struct.net_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.b44*, %struct.b44** %7, align 8
  %18 = getelementptr inbounds %struct.b44, %struct.b44* %17, i32 0, i32 3
  %19 = call i32 @del_timer_sync(i32* %18)
  %20 = load %struct.b44*, %struct.b44** %7, align 8
  %21 = getelementptr inbounds %struct.b44, %struct.b44* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.b44*, %struct.b44** %7, align 8
  %24 = call i32 @b44_halt(%struct.b44* %23)
  %25 = load %struct.b44*, %struct.b44** %7, align 8
  %26 = getelementptr inbounds %struct.b44, %struct.b44* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_carrier_off(i32 %27)
  %29 = load %struct.b44*, %struct.b44** %7, align 8
  %30 = getelementptr inbounds %struct.b44, %struct.b44* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netif_device_detach(i32 %31)
  %33 = load %struct.b44*, %struct.b44** %7, align 8
  %34 = call i32 @b44_free_rings(%struct.b44* %33)
  %35 = load %struct.b44*, %struct.b44** %7, align 8
  %36 = getelementptr inbounds %struct.b44, %struct.b44* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i32 @free_irq(i32 %40, %struct.net_device* %41)
  %43 = load %struct.b44*, %struct.b44** %7, align 8
  %44 = getelementptr inbounds %struct.b44, %struct.b44* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @B44_FLAG_WOL_ENABLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %16
  %50 = load %struct.b44*, %struct.b44** %7, align 8
  %51 = load i32, i32* @B44_PARTIAL_RESET, align 4
  %52 = call i32 @b44_init_hw(%struct.b44* %50, i32 %51)
  %53 = load %struct.b44*, %struct.b44** %7, align 8
  %54 = call i32 @b44_setup_wol(%struct.b44* %53)
  br label %55

55:                                               ; preds = %49, %16
  %56 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %57 = load i32, i32* @PCI_D3hot, align 4
  %58 = call i32 @ssb_pcihost_set_power_state(%struct.ssb_device* %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.net_device* @ssb_get_drvdata(%struct.ssb_device*) #1

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @b44_halt(%struct.b44*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @b44_free_rings(%struct.b44*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @b44_init_hw(%struct.b44*, i32) #1

declare dso_local i32 @b44_setup_wol(%struct.b44*) #1

declare dso_local i32 @ssb_pcihost_set_power_state(%struct.ssb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
