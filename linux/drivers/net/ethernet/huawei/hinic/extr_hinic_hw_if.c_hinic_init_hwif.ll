; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_hinic_init_hwif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_hinic_init_hwif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwif = type { i8*, i8*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@HINIC_PCI_CFG_REGS_BAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to map configuration regs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HINIC_PCI_INTR_REGS_BAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"HW interface is not ready\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_init_hwif(%struct.hinic_hwif* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.hinic_hwif* %0, %struct.hinic_hwif** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %8 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %9 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %8, i32 0, i32 2
  store %struct.pci_dev* %7, %struct.pci_dev** %9, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* @HINIC_PCI_CFG_REGS_BAR, align 4
  %12 = call i8* @pci_ioremap_bar(%struct.pci_dev* %10, i32 %11)
  %13 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %14 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %16 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = load i32, i32* @HINIC_PCI_INTR_REGS_BAR, align 4
  %28 = call i8* @pci_ioremap_bar(%struct.pci_dev* %26, i32 %27)
  %29 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %30 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %32 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %67

41:                                               ; preds = %25
  %42 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %43 = call i32 @hwif_ready(%struct.hinic_hwif* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %62

50:                                               ; preds = %41
  %51 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %52 = call i32 @read_hwif_attr(%struct.hinic_hwif* %51)
  %53 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %54 = call i64 @HINIC_IS_PF(%struct.hinic_hwif* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %58 = call i32 @set_ppf(%struct.hinic_hwif* %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %61 = call i32 @dma_attr_init(%struct.hinic_hwif* %60)
  store i32 0, i32* %3, align 4
  br label %73

62:                                               ; preds = %46
  %63 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %64 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @iounmap(i8* %65)
  br label %67

67:                                               ; preds = %62, %35
  %68 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %69 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @iounmap(i8* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %59, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hwif_ready(%struct.hinic_hwif*) #1

declare dso_local i32 @read_hwif_attr(%struct.hinic_hwif*) #1

declare dso_local i64 @HINIC_IS_PF(%struct.hinic_hwif*) #1

declare dso_local i32 @set_ppf(%struct.hinic_hwif*) #1

declare dso_local i32 @dma_attr_init(%struct.hinic_hwif*) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
