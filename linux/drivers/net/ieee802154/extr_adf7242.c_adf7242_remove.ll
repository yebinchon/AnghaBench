; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.adf7242_local = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adf7242_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf7242_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.adf7242_local*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.adf7242_local* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.adf7242_local* %5, %struct.adf7242_local** %3, align 8
  %6 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %7 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @debugfs_remove_recursive(i32 %8)
  %10 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %11 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %10, i32 0, i32 3
  %12 = call i32 @cancel_delayed_work_sync(i32* %11)
  %13 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %14 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @destroy_workqueue(i32 %15)
  %17 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %18 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ieee802154_unregister_hw(i32 %19)
  %21 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %22 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %21, i32 0, i32 1
  %23 = call i32 @mutex_destroy(i32* %22)
  %24 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %25 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ieee802154_free_hw(i32 %26)
  ret i32 0
}

declare dso_local %struct.adf7242_local* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @ieee802154_unregister_hw(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @ieee802154_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
