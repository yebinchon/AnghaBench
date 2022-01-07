; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.niu = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @niu_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.niu*, align 8
  %8 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.niu* @netdev_priv(%struct.net_device* %11)
  store %struct.niu* %12, %struct.niu** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.niu*, %struct.niu** %7, align 8
  %19 = getelementptr inbounds %struct.niu, %struct.niu* %18, i32 0, i32 2
  %20 = call i32 @flush_work(i32* %19)
  %21 = load %struct.niu*, %struct.niu** %7, align 8
  %22 = call i32 @niu_netif_stop(%struct.niu* %21)
  %23 = load %struct.niu*, %struct.niu** %7, align 8
  %24 = getelementptr inbounds %struct.niu, %struct.niu* %23, i32 0, i32 1
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load %struct.niu*, %struct.niu** %7, align 8
  %27 = getelementptr inbounds %struct.niu, %struct.niu* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.niu*, %struct.niu** %7, align 8
  %31 = call i32 @niu_enable_interrupts(%struct.niu* %30, i32 0)
  %32 = load %struct.niu*, %struct.niu** %7, align 8
  %33 = getelementptr inbounds %struct.niu, %struct.niu* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @netif_device_detach(%struct.net_device* %36)
  %38 = load %struct.niu*, %struct.niu** %7, align 8
  %39 = getelementptr inbounds %struct.niu, %struct.niu* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.niu*, %struct.niu** %7, align 8
  %43 = call i32 @niu_stop_hw(%struct.niu* %42)
  %44 = load %struct.niu*, %struct.niu** %7, align 8
  %45 = getelementptr inbounds %struct.niu, %struct.niu* %44, i32 0, i32 0
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = call i32 @pci_save_state(%struct.pci_dev* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %17, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @niu_netif_stop(%struct.niu*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @niu_enable_interrupts(%struct.niu*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @niu_stop_hw(%struct.niu*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
