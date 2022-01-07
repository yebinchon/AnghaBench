; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_byt_sd_probe_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_byt_sd_probe_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_slot = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64 }

@MMC_CAP_WAIT_WHILE_BUSY = common dso_local global i32 0, align 4
@MMC_CAP_AGGRESSIVE_PM = common dso_local global i32 0, align 4
@MMC_CAP_CD_WAKE = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_BXT_SD = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_BXTM_SD = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_APL_SD = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_GLK_SD = common dso_local global i64 0, align 8
@bxt_get_cd = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_NI = common dso_local global i64 0, align 8
@PCI_SUBDEVICE_ID_NI_78E3 = common dso_local global i64 0, align 8
@MMC_CAP2_AVOID_3_3V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_slot*)* @byt_sd_probe_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_sd_probe_slot(%struct.sdhci_pci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_pci_slot*, align 8
  store %struct.sdhci_pci_slot* %0, %struct.sdhci_pci_slot** %2, align 8
  %3 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %4 = call i32 @byt_probe_slot(%struct.sdhci_pci_slot* %3)
  %5 = load i32, i32* @MMC_CAP_WAIT_WHILE_BUSY, align 4
  %6 = load i32, i32* @MMC_CAP_AGGRESSIVE_PM, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MMC_CAP_CD_WAKE, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %11 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %9
  store i32 %17, i32* %15, align 4
  %18 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %19 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %21 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %23 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCI_DEVICE_ID_INTEL_BXT_SD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %61, label %31

31:                                               ; preds = %1
  %32 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %33 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI_DEVICE_ID_INTEL_BXTM_SD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %61, label %41

41:                                               ; preds = %31
  %42 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %43 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCI_DEVICE_ID_INTEL_APL_SD, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %41
  %52 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %53 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PCI_DEVICE_ID_INTEL_GLK_SD, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %51, %41, %31, %1
  %62 = load i32, i32* @bxt_get_cd, align 4
  %63 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %64 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %51
  %69 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %70 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PCI_VENDOR_ID_NI, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %68
  %79 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %80 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCI_SUBDEVICE_ID_NI_78E3, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load i32, i32* @MMC_CAP2_AVOID_3_3V, align 4
  %90 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %91 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %89
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %88, %78, %68
  ret i32 0
}

declare dso_local i32 @byt_probe_slot(%struct.sdhci_pci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
