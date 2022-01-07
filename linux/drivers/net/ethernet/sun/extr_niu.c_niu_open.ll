; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.niu = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@niu_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@LOOPBACK_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @niu_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.niu* @netdev_priv(%struct.net_device* %6)
  store %struct.niu* %7, %struct.niu** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @netif_carrier_off(%struct.net_device* %8)
  %10 = load %struct.niu*, %struct.niu** %4, align 8
  %11 = call i32 @niu_alloc_channels(%struct.niu* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %87

15:                                               ; preds = %1
  %16 = load %struct.niu*, %struct.niu** %4, align 8
  %17 = call i32 @niu_enable_interrupts(%struct.niu* %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %84

21:                                               ; preds = %15
  %22 = load %struct.niu*, %struct.niu** %4, align 8
  %23 = call i32 @niu_request_irq(%struct.niu* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %84

27:                                               ; preds = %21
  %28 = load %struct.niu*, %struct.niu** %4, align 8
  %29 = call i32 @niu_enable_napi(%struct.niu* %28)
  %30 = load %struct.niu*, %struct.niu** %4, align 8
  %31 = getelementptr inbounds %struct.niu, %struct.niu* %30, i32 0, i32 2
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.niu*, %struct.niu** %4, align 8
  %34 = call i32 @niu_init_hw(%struct.niu* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %27
  %38 = load %struct.niu*, %struct.niu** %4, align 8
  %39 = getelementptr inbounds %struct.niu, %struct.niu* %38, i32 0, i32 0
  %40 = load i32, i32* @niu_timer, align 4
  %41 = call i32 @timer_setup(%struct.TYPE_5__* %39, i32 %40, i32 0)
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* @HZ, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.niu*, %struct.niu** %4, align 8
  %46 = getelementptr inbounds %struct.niu, %struct.niu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.niu*, %struct.niu** %4, align 8
  %49 = call i32 @niu_enable_interrupts(%struct.niu* %48, i32 1)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load %struct.niu*, %struct.niu** %4, align 8
  %54 = call i32 @niu_stop_hw(%struct.niu* %53)
  br label %55

55:                                               ; preds = %52, %37
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.niu*, %struct.niu** %4, align 8
  %58 = getelementptr inbounds %struct.niu, %struct.niu* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.niu*, %struct.niu** %4, align 8
  %64 = call i32 @niu_disable_napi(%struct.niu* %63)
  br label %81

65:                                               ; preds = %56
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @netif_tx_start_all_queues(%struct.net_device* %66)
  %68 = load %struct.niu*, %struct.niu** %4, align 8
  %69 = getelementptr inbounds %struct.niu, %struct.niu* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @LOOPBACK_DISABLED, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = call i32 @netif_carrier_on(%struct.net_device* %75)
  br label %77

77:                                               ; preds = %74, %65
  %78 = load %struct.niu*, %struct.niu** %4, align 8
  %79 = getelementptr inbounds %struct.niu, %struct.niu* %78, i32 0, i32 0
  %80 = call i32 @add_timer(%struct.TYPE_5__* %79)
  store i32 0, i32* %2, align 4
  br label %89

81:                                               ; preds = %62
  %82 = load %struct.niu*, %struct.niu** %4, align 8
  %83 = call i32 @niu_free_irq(%struct.niu* %82)
  br label %84

84:                                               ; preds = %81, %26, %20
  %85 = load %struct.niu*, %struct.niu** %4, align 8
  %86 = call i32 @niu_free_channels(%struct.niu* %85)
  br label %87

87:                                               ; preds = %84, %14
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %77
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @niu_alloc_channels(%struct.niu*) #1

declare dso_local i32 @niu_enable_interrupts(%struct.niu*, i32) #1

declare dso_local i32 @niu_request_irq(%struct.niu*) #1

declare dso_local i32 @niu_enable_napi(%struct.niu*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @niu_init_hw(%struct.niu*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @niu_stop_hw(%struct.niu*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @niu_disable_napi(%struct.niu*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @niu_free_irq(%struct.niu*) #1

declare dso_local i32 @niu_free_channels(%struct.niu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
