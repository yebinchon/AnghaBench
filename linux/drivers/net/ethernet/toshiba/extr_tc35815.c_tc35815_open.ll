; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc35815_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc35815_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.tc35815_local = type { i32, i32 }

@tc35815_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @tc35815_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc35815_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tc35815_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.tc35815_local* @netdev_priv(%struct.net_device* %5)
  store %struct.tc35815_local* %6, %struct.tc35815_local** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @tc35815_interrupt, align 4
  %11 = load i32, i32* @IRQF_SHARED, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i64 @request_irq(i32 %9, i32 %10, i32 %11, i32 %14, %struct.net_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %55

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @tc35815_chip_reset(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i64 @tc35815_init_queues(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @free_irq(i32 %30, %struct.net_device* %31)
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %21
  %36 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %37 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %36, i32 0, i32 1
  %38 = call i32 @napi_enable(i32* %37)
  %39 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %40 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_irq(i32* %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @tc35815_chip_init(%struct.net_device* %42)
  %44 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %45 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @netif_carrier_off(%struct.net_device* %47)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @phy_start(i32 %51)
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @netif_start_queue(%struct.net_device* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %35, %27, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.tc35815_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @tc35815_chip_reset(%struct.net_device*) #1

declare dso_local i64 @tc35815_init_queues(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @tc35815_chip_init(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
