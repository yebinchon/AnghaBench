; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_mtd_pci_copyfrom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_mtd_pci_copyfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.map_pci_info = type { i64 (%struct.map_pci_info*, i64)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i8*, i64, i32)* @mtd_pci_copyfrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtd_pci_copyfrom(%struct.map_info* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.map_pci_info*, align 8
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.map_info*, %struct.map_info** %5, align 8
  %11 = bitcast %struct.map_info* %10 to %struct.map_pci_info*
  store %struct.map_pci_info* %11, %struct.map_pci_info** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.map_pci_info*, %struct.map_pci_info** %9, align 8
  %14 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.map_pci_info*, %struct.map_pci_info** %9, align 8
  %17 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %16, i32 0, i32 0
  %18 = load i64 (%struct.map_pci_info*, i64)*, i64 (%struct.map_pci_info*, i64)** %17, align 8
  %19 = load %struct.map_pci_info*, %struct.map_pci_info** %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 %18(%struct.map_pci_info* %19, i64 %20)
  %22 = add nsw i64 %15, %21
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @memcpy_fromio(i8* %12, i64 %22, i32 %23)
  ret void
}

declare dso_local i32 @memcpy_fromio(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
