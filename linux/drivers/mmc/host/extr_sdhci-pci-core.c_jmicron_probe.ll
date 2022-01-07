; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_jmicron_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_jmicron_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32 }
%struct.pci_dev = type { i64, i32 }

@SDHCI_QUIRK_32BIT_DMA_ADDR = common dso_local global i32 0, align 4
@SDHCI_QUIRK_32BIT_DMA_SIZE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_32BIT_ADMA_SIZE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_RESET_AFTER_REQUEST = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_SMALL_PIO = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_JMICRON_JMB38X_SD = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_JMICRON_JMB38X_MMC = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_JMICRON_JMB388_SD = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_JMICRON_JMB388_ESD = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_JMICRON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Refusing to bind to secondary interface.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failure enabling card power\0A\00", align 1
@SDHCI_QUIRK_UNSTABLE_RO_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_chip*)* @jmicron_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmicron_probe(%struct.sdhci_pci_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.sdhci_pci_chip* %0, %struct.sdhci_pci_chip** %3, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %8 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load i32, i32* @SDHCI_QUIRK_32BIT_DMA_ADDR, align 4
  %15 = load i32, i32* @SDHCI_QUIRK_32BIT_DMA_SIZE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SDHCI_QUIRK_32BIT_ADMA_SIZE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SDHCI_QUIRK_RESET_AFTER_REQUEST, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SDHCI_QUIRK_BROKEN_SMALL_PIO, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %24 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %13, %1
  %28 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %29 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI_DEVICE_ID_JMICRON_JMB38X_SD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* @PCI_DEVICE_ID_JMICRON_JMB38X_MMC, align 8
  store i64 %36, i64* %5, align 8
  br label %48

37:                                               ; preds = %27
  %38 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %39 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCI_DEVICE_ID_JMICRON_JMB388_SD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @PCI_DEVICE_ID_JMICRON_JMB388_ESD, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %45, %37
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %96

51:                                               ; preds = %48
  store %struct.pci_dev* null, %struct.pci_dev** %6, align 8
  br label %52

52:                                               ; preds = %81, %51
  %53 = load i32, i32* @PCI_VENDOR_ID_JMICRON, align 4
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = call %struct.pci_dev* @pci_get_device(i32 %53, i64 %54, %struct.pci_dev* %55)
  store %struct.pci_dev* %56, %struct.pci_dev** %6, align 8
  %57 = icmp ne %struct.pci_dev* %56, null
  br i1 %57, label %58, label %82

58:                                               ; preds = %52
  %59 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %60 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @PCI_SLOT(i32 %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @PCI_SLOT(i32 %67)
  %69 = icmp eq i64 %64, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %58
  %71 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %72 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %82

81:                                               ; preds = %70, %58
  br label %52

82:                                               ; preds = %80, %52
  %83 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %84 = icmp ne %struct.pci_dev* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %87 = call i32 @pci_dev_put(%struct.pci_dev* %86)
  %88 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %89 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = call i32 @dev_info(i32* %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %131

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %48
  %97 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %98 = call i32 @jmicron_pmos(%struct.sdhci_pci_chip* %97, i32 1)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %103 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %131

108:                                              ; preds = %96
  %109 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %110 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PCI_DEVICE_ID_JMICRON_JMB388_SD, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %108
  %117 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %118 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PCI_DEVICE_ID_JMICRON_JMB388_ESD, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %116, %108
  %125 = load i32, i32* @SDHCI_QUIRK_UNSTABLE_RO_DETECT, align 4
  %126 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %127 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %116
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %101, %85
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i64, %struct.pci_dev*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @jmicron_pmos(%struct.sdhci_pci_chip*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
