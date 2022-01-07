; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.altera_tse_private = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)* }

@.str = private unnamed_addr constant [35 x i8] c"Cannot reset MAC core (error: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @tse_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tse_shutdown(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.altera_tse_private* @netdev_priv(%struct.net_device* %6)
  store %struct.altera_tse_private* %7, %struct.altera_tse_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @phy_stop(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netif_stop_queue(%struct.net_device* %18)
  %20 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %21 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %20, i32 0, i32 6
  %22 = call i32 @napi_disable(i32* %21)
  %23 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %24 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %23, i32 0, i32 5
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %28 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)** %30, align 8
  %32 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %33 = call i32 %31(%struct.altera_tse_private* %32)
  %34 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %35 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)** %37, align 8
  %39 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %40 = call i32 %38(%struct.altera_tse_private* %39)
  %41 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %42 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %41, i32 0, i32 5
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %46 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @free_irq(i32 %47, %struct.net_device* %48)
  %50 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %51 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @free_irq(i32 %52, %struct.net_device* %53)
  %55 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %56 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %55, i32 0, i32 1
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %59 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %58, i32 0, i32 2
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %62 = call i32 @reset_mac(%struct.altera_tse_private* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %17
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @netdev_dbg(%struct.net_device* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %17
  %70 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %71 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)** %73, align 8
  %75 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %76 = call i32 %74(%struct.altera_tse_private* %75)
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = call i32 @free_skbufs(%struct.net_device* %77)
  %79 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %80 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %79, i32 0, i32 2
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %83 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %82, i32 0, i32 1
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %86 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)** %88, align 8
  %90 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %91 = call i32 %89(%struct.altera_tse_private* %90)
  ret i32 0
}

declare dso_local %struct.altera_tse_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reset_mac(%struct.altera_tse_private*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @free_skbufs(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
