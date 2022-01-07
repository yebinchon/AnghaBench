; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.macb = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.macb_queue* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.net_device*)* }
%struct.macb_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @macb_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.macb*, align 8
  %4 = alloca %struct.macb_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.macb* @netdev_priv(%struct.net_device* %7)
  store %struct.macb* %8, %struct.macb** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %9)
  store i32 0, i32* %6, align 4
  %11 = load %struct.macb*, %struct.macb** %3, align 8
  %12 = getelementptr inbounds %struct.macb, %struct.macb* %11, i32 0, i32 4
  %13 = load %struct.macb_queue*, %struct.macb_queue** %12, align 8
  store %struct.macb_queue* %13, %struct.macb_queue** %4, align 8
  br label %14

14:                                               ; preds = %24, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.macb*, %struct.macb** %3, align 8
  %17 = getelementptr inbounds %struct.macb, %struct.macb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %22 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %21, i32 0, i32 0
  %23 = call i32 @napi_disable(i32* %22)
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %28 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %27, i32 1
  store %struct.macb_queue* %28, %struct.macb_queue** %4, align 8
  br label %14

29:                                               ; preds = %14
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @phy_stop(i64 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.macb*, %struct.macb** %3, align 8
  %41 = getelementptr inbounds %struct.macb, %struct.macb* %40, i32 0, i32 3
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.macb*, %struct.macb** %3, align 8
  %45 = call i32 @macb_reset_hw(%struct.macb* %44)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @netif_carrier_off(%struct.net_device* %46)
  %48 = load %struct.macb*, %struct.macb** %3, align 8
  %49 = getelementptr inbounds %struct.macb, %struct.macb* %48, i32 0, i32 3
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.macb*, %struct.macb** %3, align 8
  %53 = call i32 @macb_free_consistent(%struct.macb* %52)
  %54 = load %struct.macb*, %struct.macb** %3, align 8
  %55 = getelementptr inbounds %struct.macb, %struct.macb* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %39
  %59 = load %struct.macb*, %struct.macb** %3, align 8
  %60 = getelementptr inbounds %struct.macb, %struct.macb* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = call i32 %63(%struct.net_device* %64)
  br label %66

66:                                               ; preds = %58, %39
  %67 = load %struct.macb*, %struct.macb** %3, align 8
  %68 = getelementptr inbounds %struct.macb, %struct.macb* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @pm_runtime_put(i32* %70)
  ret i32 0
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @macb_reset_hw(%struct.macb*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @macb_free_consistent(%struct.macb*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
