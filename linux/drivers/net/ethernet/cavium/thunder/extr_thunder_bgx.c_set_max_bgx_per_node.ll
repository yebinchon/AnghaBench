; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_set_max_bgx_per_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_set_max_bgx_per_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@max_bgx_per_node = common dso_local global i64 0, align 8
@PCI_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@MAX_BGX_PER_CN81XX = common dso_local global i64 0, align 8
@MAX_BGX_PER_CN83XX = common dso_local global i64 0, align 8
@MAX_BGX_PER_CN88XX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @set_max_bgx_per_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_max_bgx_per_node(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load i64, i64* @max_bgx_per_node, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %19

7:                                                ; preds = %1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = load i32, i32* @PCI_SUBSYSTEM_ID, align 4
  %10 = call i32 @pci_read_config_word(%struct.pci_dev* %8, i32 %9, i32* %3)
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %17 [
    i32 131, label %12
    i32 130, label %12
    i32 129, label %14
    i32 128, label %16
  ]

12:                                               ; preds = %7, %7
  %13 = load i64, i64* @MAX_BGX_PER_CN81XX, align 8
  store i64 %13, i64* @max_bgx_per_node, align 8
  br label %19

14:                                               ; preds = %7
  %15 = load i64, i64* @MAX_BGX_PER_CN83XX, align 8
  store i64 %15, i64* @max_bgx_per_node, align 8
  br label %19

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %7, %16
  %18 = load i64, i64* @MAX_BGX_PER_CN88XX, align 8
  store i64 %18, i64* @max_bgx_per_node, align 8
  br label %19

19:                                               ; preds = %6, %17, %14, %12
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
