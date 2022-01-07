; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.niu = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@ETH_DATA_LEN = common dso_local global i32 0, align 4
@niu_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@LOOPBACK_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @niu_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.niu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.niu* @netdev_priv(%struct.net_device* %10)
  store %struct.niu* %11, %struct.niu** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ETH_DATA_LEN, align 4
  %16 = icmp sgt i32 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ETH_DATA_LEN, align 4
  %20 = icmp sgt i32 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %2
  store i32 0, i32* %3, align 4
  br label %98

33:                                               ; preds = %28
  %34 = load %struct.niu*, %struct.niu** %6, align 8
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @niu_full_shutdown(%struct.niu* %34, %struct.net_device* %35)
  %37 = load %struct.niu*, %struct.niu** %6, align 8
  %38 = call i32 @niu_free_channels(%struct.niu* %37)
  %39 = load %struct.niu*, %struct.niu** %6, align 8
  %40 = call i32 @niu_enable_napi(%struct.niu* %39)
  %41 = load %struct.niu*, %struct.niu** %6, align 8
  %42 = call i32 @niu_alloc_channels(%struct.niu* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %98

47:                                               ; preds = %33
  %48 = load %struct.niu*, %struct.niu** %6, align 8
  %49 = getelementptr inbounds %struct.niu, %struct.niu* %48, i32 0, i32 2
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load %struct.niu*, %struct.niu** %6, align 8
  %52 = call i32 @niu_init_hw(%struct.niu* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %47
  %56 = load %struct.niu*, %struct.niu** %6, align 8
  %57 = getelementptr inbounds %struct.niu, %struct.niu* %56, i32 0, i32 0
  %58 = load i32, i32* @niu_timer, align 4
  %59 = call i32 @timer_setup(%struct.TYPE_5__* %57, i32 %58, i32 0)
  %60 = load i64, i64* @jiffies, align 8
  %61 = load i64, i64* @HZ, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.niu*, %struct.niu** %6, align 8
  %64 = getelementptr inbounds %struct.niu, %struct.niu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load %struct.niu*, %struct.niu** %6, align 8
  %67 = call i32 @niu_enable_interrupts(%struct.niu* %66, i32 1)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %55
  %71 = load %struct.niu*, %struct.niu** %6, align 8
  %72 = call i32 @niu_stop_hw(%struct.niu* %71)
  br label %73

73:                                               ; preds = %70, %55
  br label %74

74:                                               ; preds = %73, %47
  %75 = load %struct.niu*, %struct.niu** %6, align 8
  %76 = getelementptr inbounds %struct.niu, %struct.niu* %75, i32 0, i32 2
  %77 = call i32 @spin_unlock_irq(i32* %76)
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %74
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = call i32 @netif_tx_start_all_queues(%struct.net_device* %81)
  %83 = load %struct.niu*, %struct.niu** %6, align 8
  %84 = getelementptr inbounds %struct.niu, %struct.niu* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @LOOPBACK_DISABLED, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i32 @netif_carrier_on(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %89, %80
  %93 = load %struct.niu*, %struct.niu** %6, align 8
  %94 = getelementptr inbounds %struct.niu, %struct.niu* %93, i32 0, i32 0
  %95 = call i32 @add_timer(%struct.TYPE_5__* %94)
  br label %96

96:                                               ; preds = %92, %74
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %45, %32
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @niu_full_shutdown(%struct.niu*, %struct.net_device*) #1

declare dso_local i32 @niu_free_channels(%struct.niu*) #1

declare dso_local i32 @niu_enable_napi(%struct.niu*) #1

declare dso_local i32 @niu_alloc_channels(%struct.niu*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @niu_init_hw(%struct.niu*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @niu_enable_interrupts(%struct.niu*, i32) #1

declare dso_local i32 @niu_stop_hw(%struct.niu*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
