; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_scb2_flash.c_scb2_flash_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_scb2_flash.c_scb2_flash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }

@scb2_mtd = common dso_local global %struct.TYPE_5__* null, align 8
@scb2_ioaddr = common dso_local global i32* null, align 8
@region_fail = common dso_local global i32 0, align 4
@SCB2_ADDR = common dso_local global i32 0, align 4
@SCB2_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @scb2_flash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scb2_flash_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @scb2_mtd, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %24

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @scb2_mtd, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @scb2_mtd, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mtd_lock(%struct.TYPE_5__* %7, i32 0, i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @scb2_mtd, align 8
  %13 = call i32 @mtd_device_unregister(%struct.TYPE_5__* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @scb2_mtd, align 8
  %15 = call i32 @map_destroy(%struct.TYPE_5__* %14)
  %16 = load i32*, i32** @scb2_ioaddr, align 8
  %17 = call i32 @iounmap(i32* %16)
  store i32* null, i32** @scb2_ioaddr, align 8
  %18 = load i32, i32* @region_fail, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @SCB2_ADDR, align 4
  %22 = load i32, i32* @SCB2_WINDOW, align 4
  %23 = call i32 @release_mem_region(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %5, %20, %6
  ret void
}

declare dso_local i32 @mtd_lock(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mtd_device_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @map_destroy(%struct.TYPE_5__*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
