; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_get_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_get_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { i64, i8*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.brcmf_bus = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"pci_enable_device failed err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"BAR1 Not enabled, device size=%ld, addr=%#016llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BRCMF_PCIE_REG_MAP_SIZE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"ioremap() failed (%p,%p)\0A\00", align 1
@PCIE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Phys addr : reg space = %p base addr %#016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Phys addr : mem space = %p base addr %#016llx size 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pciedev_info*)* @brcmf_pcie_get_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_get_resource(%struct.brcmf_pciedev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_pciedev_info*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.brcmf_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %3, align 8
  %10 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %11 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %10, i32 0, i32 2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call %struct.brcmf_bus* @dev_get_drvdata(i32* %14)
  store %struct.brcmf_bus* %15, %struct.brcmf_bus** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_enable_device(%struct.pci_dev* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.brcmf_bus*, i8*, i32, ...) @brcmf_err(%struct.brcmf_bus* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %96

25:                                               ; preds = %1
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_set_master(%struct.pci_dev* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i64 @pci_resource_start(%struct.pci_dev* %28, i32 0)
  store i64 %29, i64* %7, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i64 @pci_resource_start(%struct.pci_dev* %30, i32 2)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i8* @pci_resource_len(%struct.pci_dev* %32, i32 2)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36, %25
  %40 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load i64, i64* %8, align 8
  %44 = call i32 (%struct.brcmf_bus*, i8*, i32, ...) @brcmf_err(%struct.brcmf_bus* %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %96

47:                                               ; preds = %36
  %48 = load i64, i64* %7, align 8
  %49 = load i8*, i8** @BRCMF_PCIE_REG_MAP_SIZE, align 8
  %50 = call i8* @ioremap_nocache(i64 %48, i8* %49)
  %51 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %52 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i8* @ioremap_nocache(i64 %53, i8* %54)
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %58 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %60 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %47
  %64 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %65 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %63, %47
  %69 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %70 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %71 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %75 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (%struct.brcmf_bus*, i8*, i32, ...) @brcmf_err(%struct.brcmf_bus* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %73, i64 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %96

80:                                               ; preds = %63
  %81 = load i32, i32* @PCIE, align 4
  %82 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %83 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load i64, i64* %7, align 8
  %87 = call i32 (i32, i8*, i64, i64, ...) @brcmf_dbg(i32 %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %85, i64 %86)
  %88 = load i32, i32* @PCIE, align 4
  %89 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %90 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = call i32 (i32, i8*, i64, i64, ...) @brcmf_dbg(i32 %88, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %91, i64 %92, i32 %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %80, %68, %39, %20
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @brcmf_err(%struct.brcmf_bus*, i8*, i32, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i8* @ioremap_nocache(i64, i8*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
