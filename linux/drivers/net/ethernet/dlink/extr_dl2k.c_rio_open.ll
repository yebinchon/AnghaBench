; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@rio_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@rio_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %7)
  store %struct.netdev_private* %8, %struct.netdev_private** %4, align 8
  %9 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %10 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @alloc_list(%struct.net_device* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @rio_hw_init(%struct.net_device* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @rio_interrupt, align 4
  %25 = load i32, i32* @IRQF_SHARED, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @request_irq(i32 %23, i32 %24, i32 %25, i32 %28, %struct.net_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @rio_hw_stop(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @free_list(%struct.net_device* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %59

39:                                               ; preds = %20
  %40 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %41 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %40, i32 0, i32 0
  %42 = load i32, i32* @rio_timer, align 4
  %43 = call i32 @timer_setup(%struct.TYPE_5__* %41, i32 %42, i32 0)
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i32, i32* @HZ, align 4
  %46 = mul nsw i32 1, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %50 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %53 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %52, i32 0, i32 0
  %54 = call i32 @add_timer(%struct.TYPE_5__* %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @netif_start_queue(%struct.net_device* %55)
  %57 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %58 = call i32 @dl2k_enable_int(%struct.netdev_private* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %39, %33, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @alloc_list(%struct.net_device*) #1

declare dso_local i32 @rio_hw_init(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @rio_hw_stop(%struct.net_device*) #1

declare dso_local i32 @free_list(%struct.net_device*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @dl2k_enable_int(%struct.netdev_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
