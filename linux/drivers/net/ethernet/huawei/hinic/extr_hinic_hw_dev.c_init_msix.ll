; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_init_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_init_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwdev = type { %struct.TYPE_3__*, %struct.hinic_hwif* }
%struct.TYPE_3__ = type { i32 }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@HINIC_MAX_QPS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to enable pci msix\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_hwdev*)* @init_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_msix(%struct.hinic_hwdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_hwdev*, align 8
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hinic_hwdev* %0, %struct.hinic_hwdev** %3, align 8
  %12 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %13 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %12, i32 0, i32 1
  %14 = load %struct.hinic_hwif*, %struct.hinic_hwif** %13, align 8
  store %struct.hinic_hwif* %14, %struct.hinic_hwif** %4, align 8
  %15 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %16 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %19 = call i32 @HINIC_HWIF_NUM_AEQS(%struct.hinic_hwif* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %21 = call i32 @HINIC_HWIF_NUM_CEQS(%struct.hinic_hwif* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @HINIC_MAX_QPS, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @MAX_IRQS(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %28 = call i32 @HINIC_HWIF_NUM_IRQS(%struct.hinic_hwif* %27)
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %32 = call i32 @HINIC_HWIF_NUM_IRQS(%struct.hinic_hwif* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %1
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  store i64 %36, i64* %9, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.TYPE_3__* @devm_kzalloc(i32* %38, i64 %39, i32 %40)
  %42 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %43 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %42, i32 0, i32 0
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %43, align 8
  %44 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %45 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %33
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %83

51:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %59 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 4
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %52

68:                                               ; preds = %52
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %71 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @pci_enable_msix_exact(%struct.pci_dev* %69, %struct.TYPE_3__* %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %77, %48
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @HINIC_HWIF_NUM_AEQS(%struct.hinic_hwif*) #1

declare dso_local i32 @HINIC_HWIF_NUM_CEQS(%struct.hinic_hwif*) #1

declare dso_local i32 @MAX_IRQS(i32, i32, i32) #1

declare dso_local i32 @HINIC_HWIF_NUM_IRQS(%struct.hinic_hwif*) #1

declare dso_local %struct.TYPE_3__* @devm_kzalloc(i32*, i64, i32) #1

declare dso_local i32 @pci_enable_msix_exact(%struct.pci_dev*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
