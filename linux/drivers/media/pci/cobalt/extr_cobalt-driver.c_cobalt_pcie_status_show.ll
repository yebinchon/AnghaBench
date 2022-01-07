; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_pcie_status_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_pcie_status_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@PCI_EXP_DEVCAP = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVSTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"PCIe device capability 0x%08x: Max payload %d\0A\00", align 1
@PCI_EXP_DEVCAP_PAYLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"PCIe device control 0x%04x: Max payload %d. Max read request %d\0A\00", align 1
@PCI_EXP_DEVCTL_PAYLOAD = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"PCIe device status 0x%04x\0A\00", align 1
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"PCIe link capability 0x%08x: %s per lane and %u lanes\0A\00", align 1
@PCI_EXP_LNKCAP_MLW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"PCIe link control 0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"PCIe link status 0x%04x: %s per lane and %u lanes\0A\00", align 1
@PCI_EXP_LNKSTA_NLW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"PCIe bus link capability 0x%08x: %s per lane and %u lanes\0A\00", align 1
@PCI_EXP_SLTCAP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"PCIe slot capability 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"PCIe slot control 0x%04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"PCIe slot status 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cobalt_pcie_status_show(%struct.cobalt* %0) #0 {
  %2 = alloca %struct.cobalt*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %2, align 8
  %8 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %9 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %12 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %4, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = call i32 @pci_is_pcie(%struct.pci_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_is_pcie(%struct.pci_dev* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %1
  br label %109

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* @PCI_EXP_DEVCAP, align 4
  %29 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %27, i32 %28, i32* %5)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %32 = call i32 @pcie_capability_read_word(%struct.pci_dev* %30, i32 %31, i32* %7)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = load i32, i32* @PCI_EXP_DEVSTA, align 4
  %35 = call i32 @pcie_capability_read_word(%struct.pci_dev* %33, i32 %34, i32* %6)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PCI_EXP_DEVCAP_PAYLOAD, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @get_payload_size(i32 %39)
  %41 = call i32 (i8*, i32, ...) @cobalt_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %45 = and i32 %43, %44
  %46 = ashr i32 %45, 5
  %47 = call i32 @get_payload_size(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %50 = and i32 %48, %49
  %51 = ashr i32 %50, 12
  %52 = call i32 @get_payload_size(i32 %51)
  %53 = call i32 (i8*, i32, ...) @cobalt_info(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %47, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, i32, ...) @cobalt_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %58 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %56, i32 %57, i32* %5)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %60 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %61 = call i32 @pcie_capability_read_word(%struct.pci_dev* %59, i32 %60, i32* %7)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %63 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %64 = call i32 @pcie_capability_read_word(%struct.pci_dev* %62, i32 %63, i32* %6)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @get_link_speed(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PCI_EXP_LNKCAP_MLW, align 4
  %70 = and i32 %68, %69
  %71 = ashr i32 %70, 4
  %72 = call i32 (i8*, i32, ...) @cobalt_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %67, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i8*, i32, ...) @cobalt_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @get_link_speed(i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @PCI_EXP_LNKSTA_NLW, align 4
  %80 = and i32 %78, %79
  %81 = ashr i32 %80, 4
  %82 = call i32 (i8*, i32, ...) @cobalt_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %77, i32 %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %85 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %83, i32 %84, i32* %5)
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @get_link_speed(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @PCI_EXP_LNKCAP_MLW, align 4
  %91 = and i32 %89, %90
  %92 = ashr i32 %91, 4
  %93 = call i32 (i8*, i32, ...) @cobalt_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %86, i32 %88, i32 %92)
  %94 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %95 = load i32, i32* @PCI_EXP_SLTCAP, align 4
  %96 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %94, i32 %95, i32* %5)
  %97 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %98 = load i32, i32* @PCI_EXP_SLTCTL, align 4
  %99 = call i32 @pcie_capability_read_word(%struct.pci_dev* %97, i32 %98, i32* %7)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %101 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %102 = call i32 @pcie_capability_read_word(%struct.pci_dev* %100, i32 %101, i32* %6)
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i8*, i32, ...) @cobalt_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (i8*, i32, ...) @cobalt_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (i8*, i32, ...) @cobalt_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %26, %25
  ret void
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cobalt_info(i8*, i32, ...) #1

declare dso_local i32 @get_payload_size(i32) #1

declare dso_local i32 @get_link_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
