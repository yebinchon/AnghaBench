; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_mtd_pci_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_mtd_pci_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.map_pci_info = type { i64 (%struct.map_pci_info*, i64)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.map_info*, i64)* @mtd_pci_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mtd_pci_read32(%struct.map_info* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.map_pci_info*, align 8
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.map_info*, %struct.map_info** %4, align 8
  %8 = bitcast %struct.map_info* %7 to %struct.map_pci_info*
  store %struct.map_pci_info* %8, %struct.map_pci_info** %6, align 8
  %9 = load %struct.map_pci_info*, %struct.map_pci_info** %6, align 8
  %10 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.map_pci_info*, %struct.map_pci_info** %6, align 8
  %13 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %12, i32 0, i32 0
  %14 = load i64 (%struct.map_pci_info*, i64)*, i64 (%struct.map_pci_info*, i64)** %13, align 8
  %15 = load %struct.map_pci_info*, %struct.map_pci_info** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i64 %14(%struct.map_pci_info* %15, i64 %16)
  %18 = add nsw i64 %11, %17
  %19 = call i32 @readl(i64 %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %19, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  ret i32* %24
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
