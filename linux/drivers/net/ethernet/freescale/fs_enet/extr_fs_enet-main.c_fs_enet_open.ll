; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_enet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_enet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fs_enet_private = type { i32, i32, i32, i32 }

@fs_enet_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"fs_enet-mac\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not allocate FS_ENET IRQ!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fs_enet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_enet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fs_enet_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fs_enet_private* %8, %struct.fs_enet_private** %4, align 8
  %9 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %10 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @fs_init_bds(i32 %11)
  %13 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %14 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %13, i32 0, i32 0
  %15 = call i32 @napi_enable(i32* %14)
  %16 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %17 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @fs_enet_interrupt, align 4
  %20 = load i32, i32* @IRQF_SHARED, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @request_irq(i32 %18, i32 %19, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.net_device* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %27 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %31 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %30, i32 0, i32 0
  %32 = call i32 @napi_disable(i32* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %57

35:                                               ; preds = %1
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @fs_init_phy(%struct.net_device* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %42 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @free_irq(i32 %43, %struct.net_device* %44)
  %46 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %47 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %46, i32 0, i32 0
  %48 = call i32 @napi_disable(i32* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %57

50:                                               ; preds = %35
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @phy_start(i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @netif_start_queue(%struct.net_device* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %50, %40, %25
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fs_init_bds(i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @fs_init_phy(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
