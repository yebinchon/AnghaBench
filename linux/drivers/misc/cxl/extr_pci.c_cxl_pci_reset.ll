; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_pci_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_pci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [70 x i8] c"cxl: refusing to reset/reflash when perst_reloads_same_image is set.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"CXL reset\0A\00", align 1
@pcie_warm_reset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cxl: pcie_warm_reset failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_pci_reset(%struct.cxl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %3, align 8
  %6 = load %struct.cxl*, %struct.cxl** %3, align 8
  %7 = getelementptr inbounds %struct.cxl, %struct.cxl* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.pci_dev* @to_pci_dev(i32 %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.cxl*, %struct.cxl** %3, align 8
  %12 = getelementptr inbounds %struct.cxl, %struct.cxl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_info(i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.cxl*, %struct.cxl** %3, align 8
  %26 = call i32 @cxl_data_cache_flush(%struct.cxl* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* @pcie_warm_reset, align 4
  %29 = call i32 @pci_set_pcie_reset_state(%struct.pci_dev* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %31, %15
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @cxl_data_cache_flush(%struct.cxl*) #1

declare dso_local i32 @pci_set_pcie_reset_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
