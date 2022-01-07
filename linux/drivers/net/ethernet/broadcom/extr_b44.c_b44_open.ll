; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.b44 = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@B44_FULL_RESET = common dso_local global i32 0, align 4
@b44_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@B44_CHIP_RESET_PARTIAL = common dso_local global i32 0, align 4
@b44_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@B44_FLAG_EXTERNAL_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @b44_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.b44*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.b44* @netdev_priv(%struct.net_device* %5)
  store %struct.b44* %6, %struct.b44** %3, align 8
  %7 = load %struct.b44*, %struct.b44** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @b44_alloc_consistent(%struct.b44* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %80

13:                                               ; preds = %1
  %14 = load %struct.b44*, %struct.b44** %3, align 8
  %15 = getelementptr inbounds %struct.b44, %struct.b44* %14, i32 0, i32 2
  %16 = call i32 @napi_enable(i32* %15)
  %17 = load %struct.b44*, %struct.b44** %3, align 8
  %18 = call i32 @b44_init_rings(%struct.b44* %17)
  %19 = load %struct.b44*, %struct.b44** %3, align 8
  %20 = load i32, i32* @B44_FULL_RESET, align 4
  %21 = call i32 @b44_init_hw(%struct.b44* %19, i32 %20)
  %22 = load %struct.b44*, %struct.b44** %3, align 8
  %23 = call i32 @b44_check_phy(%struct.b44* %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @b44_interrupt, align 4
  %28 = load i32, i32* @IRQF_SHARED, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @request_irq(i32 %26, i32 %27, i32 %28, i32 %31, %struct.net_device* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %13
  %40 = load %struct.b44*, %struct.b44** %3, align 8
  %41 = getelementptr inbounds %struct.b44, %struct.b44* %40, i32 0, i32 2
  %42 = call i32 @napi_disable(i32* %41)
  %43 = load %struct.b44*, %struct.b44** %3, align 8
  %44 = load i32, i32* @B44_CHIP_RESET_PARTIAL, align 4
  %45 = call i32 @b44_chip_reset(%struct.b44* %43, i32 %44)
  %46 = load %struct.b44*, %struct.b44** %3, align 8
  %47 = call i32 @b44_free_rings(%struct.b44* %46)
  %48 = load %struct.b44*, %struct.b44** %3, align 8
  %49 = call i32 @b44_free_consistent(%struct.b44* %48)
  br label %80

50:                                               ; preds = %13
  %51 = load %struct.b44*, %struct.b44** %3, align 8
  %52 = getelementptr inbounds %struct.b44, %struct.b44* %51, i32 0, i32 1
  %53 = load i32, i32* @b44_timer, align 4
  %54 = call i32 @timer_setup(%struct.TYPE_3__* %52, i32 %53, i32 0)
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i64, i64* @HZ, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.b44*, %struct.b44** %3, align 8
  %59 = getelementptr inbounds %struct.b44, %struct.b44* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.b44*, %struct.b44** %3, align 8
  %62 = getelementptr inbounds %struct.b44, %struct.b44* %61, i32 0, i32 1
  %63 = call i32 @add_timer(%struct.TYPE_3__* %62)
  %64 = load %struct.b44*, %struct.b44** %3, align 8
  %65 = call i32 @b44_enable_ints(%struct.b44* %64)
  %66 = load %struct.b44*, %struct.b44** %3, align 8
  %67 = getelementptr inbounds %struct.b44, %struct.b44* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %50
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @phy_start(i32 %75)
  br label %77

77:                                               ; preds = %72, %50
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call i32 @netif_start_queue(%struct.net_device* %78)
  br label %80

80:                                               ; preds = %77, %39, %12
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @b44_alloc_consistent(%struct.b44*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @b44_init_rings(%struct.b44*) #1

declare dso_local i32 @b44_init_hw(%struct.b44*, i32) #1

declare dso_local i32 @b44_check_phy(%struct.b44*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @b44_chip_reset(%struct.b44*, i32) #1

declare dso_local i32 @b44_free_rings(%struct.b44*) #1

declare dso_local i32 @b44_free_consistent(%struct.b44*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @b44_enable_ints(%struct.b44*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
