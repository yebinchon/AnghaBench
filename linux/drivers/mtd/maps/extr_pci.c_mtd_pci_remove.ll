; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_mtd_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_mtd_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mtd_info = type { %struct.map_pci_info* }
%struct.map_pci_info = type { i32 (%struct.pci_dev*, %struct.map_pci_info*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mtd_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtd_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.map_pci_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.mtd_info* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.mtd_info* %6, %struct.mtd_info** %3, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load %struct.map_pci_info*, %struct.map_pci_info** %8, align 8
  store %struct.map_pci_info* %9, %struct.map_pci_info** %4, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %11 = call i32 @mtd_device_unregister(%struct.mtd_info* %10)
  %12 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %13 = call i32 @map_destroy(%struct.mtd_info* %12)
  %14 = load %struct.map_pci_info*, %struct.map_pci_info** %4, align 8
  %15 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %14, i32 0, i32 0
  %16 = load i32 (%struct.pci_dev*, %struct.map_pci_info*)*, i32 (%struct.pci_dev*, %struct.map_pci_info*)** %15, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load %struct.map_pci_info*, %struct.map_pci_info** %4, align 8
  %19 = call i32 %16(%struct.pci_dev* %17, %struct.map_pci_info* %18)
  %20 = load %struct.map_pci_info*, %struct.map_pci_info** %4, align 8
  %21 = call i32 @kfree(%struct.map_pci_info* %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @pci_release_regions(%struct.pci_dev* %22)
  ret void
}

declare dso_local %struct.mtd_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mtd_device_unregister(%struct.mtd_info*) #1

declare dso_local i32 @map_destroy(%struct.mtd_info*) #1

declare dso_local i32 @kfree(%struct.map_pci_info*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
