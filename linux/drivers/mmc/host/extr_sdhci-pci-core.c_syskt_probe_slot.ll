; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_syskt_probe_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_syskt_probe_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_slot = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SYSKT_BOARD_REV = common dso_local global i64 0, align 8
@SYSKT_CHIP_REV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"SysKonnect CardBus2SDIO, board rev %d.%d, chip rev %d.%d\0A\00", align 1
@SDHCI_QUIRK_FORCE_DMA = common dso_local global i32 0, align 4
@SYSKT_POWER_330 = common dso_local global i32 0, align 4
@SYSKT_POWER_DATA = common dso_local global i64 0, align 8
@SYSKT_POWER_START = common dso_local global i32 0, align 4
@SYSKT_POWER_CMD = common dso_local global i64 0, align 8
@SYSKT_POWER_STATUS = common dso_local global i64 0, align 8
@SYSKT_POWER_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"power regulator never stabilized\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_slot*)* @syskt_probe_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syskt_probe_slot(%struct.sdhci_pci_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdhci_pci_slot* %0, %struct.sdhci_pci_slot** %3, align 8
  %8 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %9 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SYSKT_BOARD_REV, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readb(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SYSKT_CHIP_REV, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readb(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %25 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 15
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 15
  %38 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33, i32 %35, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %39, 32
  br i1 %40, label %41, label %49

41:                                               ; preds = %1
  %42 = load i32, i32* @SDHCI_QUIRK_FORCE_DMA, align 4
  %43 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %44 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %41, %1
  %50 = load i32, i32* @SYSKT_POWER_330, align 4
  %51 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %52 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SYSKT_POWER_DATA, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writeb(i32 %50, i64 %57)
  %59 = load i32, i32* @SYSKT_POWER_START, align 4
  %60 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %61 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SYSKT_POWER_CMD, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writeb(i32 %59, i64 %66)
  %68 = call i32 @udelay(i32 50)
  store i32 10, i32* %4, align 4
  br label %69

69:                                               ; preds = %85, %49
  %70 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %71 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SYSKT_POWER_STATUS, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @readw(i64 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @SYSKT_POWER_STATUS_OK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %89

83:                                               ; preds = %69
  %84 = call i32 @udelay(i32 100)
  br label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %69, label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %110, label %92

92:                                               ; preds = %89
  %93 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %94 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %101 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SYSKT_POWER_CMD, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writeb(i32 0, i64 %106)
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %111

110:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %92
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
