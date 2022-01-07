; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_alloc_and_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_alloc_and_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.platform_device = type { i32 }
%struct.niu_ops = type { i32 }
%struct.niu = type { i32, i32, i32, i32, %struct.niu_ops*, %struct.device*, %struct.platform_device*, %struct.pci_dev*, %struct.net_device* }

@NIU_NUM_TXCHAN = common dso_local global i32 0, align 4
@niu_debug = common dso_local global i32 0, align 4
@niu_reset_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.device*, %struct.pci_dev*, %struct.platform_device*, %struct.niu_ops*, i32)* @niu_alloc_and_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @niu_alloc_and_init(%struct.device* %0, %struct.pci_dev* %1, %struct.platform_device* %2, %struct.niu_ops* %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.niu_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.niu*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %8, align 8
  store %struct.platform_device* %2, %struct.platform_device** %9, align 8
  store %struct.niu_ops* %3, %struct.niu_ops** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @NIU_NUM_TXCHAN, align 4
  %15 = call %struct.net_device* @alloc_etherdev_mq(i32 56, i32 %14)
  store %struct.net_device* %15, %struct.net_device** %12, align 8
  %16 = load %struct.net_device*, %struct.net_device** %12, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.net_device* null, %struct.net_device** %6, align 8
  br label %54

19:                                               ; preds = %5
  %20 = load %struct.net_device*, %struct.net_device** %12, align 8
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call i32 @SET_NETDEV_DEV(%struct.net_device* %20, %struct.device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %12, align 8
  %24 = call %struct.niu* @netdev_priv(%struct.net_device* %23)
  store %struct.niu* %24, %struct.niu** %13, align 8
  %25 = load %struct.net_device*, %struct.net_device** %12, align 8
  %26 = load %struct.niu*, %struct.niu** %13, align 8
  %27 = getelementptr inbounds %struct.niu, %struct.niu* %26, i32 0, i32 8
  store %struct.net_device* %25, %struct.net_device** %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %29 = load %struct.niu*, %struct.niu** %13, align 8
  %30 = getelementptr inbounds %struct.niu, %struct.niu* %29, i32 0, i32 7
  store %struct.pci_dev* %28, %struct.pci_dev** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %32 = load %struct.niu*, %struct.niu** %13, align 8
  %33 = getelementptr inbounds %struct.niu, %struct.niu* %32, i32 0, i32 6
  store %struct.platform_device* %31, %struct.platform_device** %33, align 8
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = load %struct.niu*, %struct.niu** %13, align 8
  %36 = getelementptr inbounds %struct.niu, %struct.niu* %35, i32 0, i32 5
  store %struct.device* %34, %struct.device** %36, align 8
  %37 = load %struct.niu_ops*, %struct.niu_ops** %10, align 8
  %38 = load %struct.niu*, %struct.niu** %13, align 8
  %39 = getelementptr inbounds %struct.niu, %struct.niu* %38, i32 0, i32 4
  store %struct.niu_ops* %37, %struct.niu_ops** %39, align 8
  %40 = load i32, i32* @niu_debug, align 4
  %41 = load %struct.niu*, %struct.niu** %13, align 8
  %42 = getelementptr inbounds %struct.niu, %struct.niu* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.niu*, %struct.niu** %13, align 8
  %44 = getelementptr inbounds %struct.niu, %struct.niu* %43, i32 0, i32 2
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.niu*, %struct.niu** %13, align 8
  %47 = getelementptr inbounds %struct.niu, %struct.niu* %46, i32 0, i32 1
  %48 = load i32, i32* @niu_reset_task, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.niu*, %struct.niu** %13, align 8
  %52 = getelementptr inbounds %struct.niu, %struct.niu* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %53, %struct.net_device** %6, align 8
  br label %54

54:                                               ; preds = %19, %18
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  ret %struct.net_device* %55
}

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
