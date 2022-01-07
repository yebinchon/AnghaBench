; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32, i32 }
%struct.net_device = type { i32, i32 }
%struct.b44 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to powerup the bus\0A\00", align 1
@B44_FULL_RESET = common dso_local global i32 0, align 4
@b44_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*)* @b44_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_resume(%struct.ssb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.b44*, align 8
  %6 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %3, align 8
  %7 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %8 = call %struct.net_device* @ssb_get_drvdata(%struct.ssb_device* %7)
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.b44* @netdev_priv(%struct.net_device* %9)
  store %struct.b44* %10, %struct.b44** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %12 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ssb_bus_powerup(i32 %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %19 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %80

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i32 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %80

28:                                               ; preds = %23
  %29 = load %struct.b44*, %struct.b44** %5, align 8
  %30 = getelementptr inbounds %struct.b44, %struct.b44* %29, i32 0, i32 2
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load %struct.b44*, %struct.b44** %5, align 8
  %33 = call i32 @b44_init_rings(%struct.b44* %32)
  %34 = load %struct.b44*, %struct.b44** %5, align 8
  %35 = load i32, i32* @B44_FULL_RESET, align 4
  %36 = call i32 @b44_init_hw(%struct.b44* %34, i32 %35)
  %37 = load %struct.b44*, %struct.b44** %5, align 8
  %38 = getelementptr inbounds %struct.b44, %struct.b44* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @b44_interrupt, align 4
  %44 = load i32, i32* @IRQF_SHARED, align 4
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i32 @request_irq(i32 %42, i32 %43, i32 %44, i32 %47, %struct.net_device* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %28
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i32 @netdev_err(%struct.net_device* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.b44*, %struct.b44** %5, align 8
  %56 = getelementptr inbounds %struct.b44, %struct.b44* %55, i32 0, i32 2
  %57 = call i32 @spin_lock_irq(i32* %56)
  %58 = load %struct.b44*, %struct.b44** %5, align 8
  %59 = call i32 @b44_halt(%struct.b44* %58)
  %60 = load %struct.b44*, %struct.b44** %5, align 8
  %61 = call i32 @b44_free_rings(%struct.b44* %60)
  %62 = load %struct.b44*, %struct.b44** %5, align 8
  %63 = getelementptr inbounds %struct.b44, %struct.b44* %62, i32 0, i32 2
  %64 = call i32 @spin_unlock_irq(i32* %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %80

66:                                               ; preds = %28
  %67 = load %struct.b44*, %struct.b44** %5, align 8
  %68 = getelementptr inbounds %struct.b44, %struct.b44* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @netif_device_attach(i32 %69)
  %71 = load %struct.b44*, %struct.b44** %5, align 8
  %72 = call i32 @b44_enable_ints(%struct.b44* %71)
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i32 @netif_wake_queue(%struct.net_device* %73)
  %75 = load %struct.b44*, %struct.b44** %5, align 8
  %76 = getelementptr inbounds %struct.b44, %struct.b44* %75, i32 0, i32 0
  %77 = load i64, i64* @jiffies, align 8
  %78 = add nsw i64 %77, 1
  %79 = call i32 @mod_timer(i32* %76, i64 %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %66, %52, %27, %17
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.net_device* @ssb_get_drvdata(%struct.ssb_device*) #1

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ssb_bus_powerup(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @b44_init_rings(%struct.b44*) #1

declare dso_local i32 @b44_init_hw(%struct.b44*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @b44_halt(%struct.b44*) #1

declare dso_local i32 @b44_free_rings(%struct.b44*) #1

declare dso_local i32 @netif_device_attach(i32) #1

declare dso_local i32 @b44_enable_ints(%struct.b44*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
