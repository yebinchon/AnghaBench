; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_setup_cxl_bars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_setup_cxl_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"ABORTING: M32 BAR assignment incompatible with CXL\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_4 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @setup_cxl_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_cxl_bars(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %5 = call i32 @p1_base(%struct.pci_dev* %4)
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 4294967296
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call i32 @p2_base(%struct.pci_dev* %9)
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 4294967296
  br i1 %12, label %13, label %19

13:                                               ; preds = %8, %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = load i32, i32* @PCI_BASE_ADDRESS_4, align 4
  %22 = call i32 @pci_write_config_dword(%struct.pci_dev* %20, i32 %21, i32 0)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* @PCI_BASE_ADDRESS_5, align 4
  %25 = call i32 @pci_write_config_dword(%struct.pci_dev* %23, i32 %24, i32 131072)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @p1_base(%struct.pci_dev*) #1

declare dso_local i32 @p2_base(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
