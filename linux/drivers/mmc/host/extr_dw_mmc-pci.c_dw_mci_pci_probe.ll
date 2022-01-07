; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-pci.c_dw_mci_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-pci.c_dw_mci_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.dw_mci = type { i32, i32*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@pci_board_data = common dso_local global i32 0, align 4
@PCI_BAR_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @dw_mci_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.dw_mci*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pcim_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.dw_mci* @devm_kzalloc(i32* %16, i32 32, i32 %17)
  store %struct.dw_mci* %18, %struct.dw_mci** %6, align 8
  %19 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %20 = icmp ne %struct.dw_mci* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %14
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %29 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @IRQF_SHARED, align 4
  %31 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %32 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %36 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %38 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %37, i32 0, i32 1
  store i32* @pci_board_data, i32** %38, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load i32, i32* @PCI_BAR_NO, align 4
  %41 = shl i32 1, %40
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @pci_name(%struct.pci_dev* %42)
  %44 = call i32 @pcim_iomap_regions(%struct.pci_dev* %39, i32 %41, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %24
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %70

49:                                               ; preds = %24
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i32* @pcim_iomap_table(%struct.pci_dev* %50)
  %52 = load i32, i32* @PCI_BAR_NO, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %57 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call i32 @pci_set_master(%struct.pci_dev* %58)
  %60 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %61 = call i32 @dw_mci_probe(%struct.dw_mci* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %49
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %69 = call i32 @pci_set_drvdata(%struct.pci_dev* %67, %struct.dw_mci* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %64, %47, %21, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.dw_mci* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @dw_mci_probe(%struct.dw_mci*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.dw_mci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
