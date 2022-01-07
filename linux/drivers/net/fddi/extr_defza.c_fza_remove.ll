; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.fza_private = type { i32, i32 }
%struct.tc_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @fza_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fza_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fza_private*, align 8
  %5 = alloca %struct.tc_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.net_device* @dev_get_drvdata(%struct.device* %8)
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.fza_private* @netdev_priv(%struct.net_device* %10)
  store %struct.fza_private* %11, %struct.fza_private** %4, align 8
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call %struct.tc_dev* @to_tc_dev(%struct.device* %12)
  store %struct.tc_dev* %13, %struct.tc_dev** %5, align 8
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i32 @put_device(%struct.device* %14)
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @unregister_netdev(%struct.net_device* %16)
  %18 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %19 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %18, i32 0, i32 1
  %20 = call i32 @del_timer_sync(i32* %19)
  %21 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %22 = call i32 @fza_do_shutdown(%struct.fza_private* %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.net_device* %26)
  %28 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %29 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iounmap(i32 %30)
  %32 = load %struct.tc_dev*, %struct.tc_dev** %5, align 8
  %33 = getelementptr inbounds %struct.tc_dev, %struct.tc_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  %36 = load %struct.tc_dev*, %struct.tc_dev** %5, align 8
  %37 = getelementptr inbounds %struct.tc_dev, %struct.tc_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub nsw i64 %39, %40
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @release_mem_region(i64 %43, i64 %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @free_netdev(%struct.net_device* %46)
  ret i32 0
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.fza_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.tc_dev* @to_tc_dev(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @fza_do_shutdown(%struct.fza_private*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
