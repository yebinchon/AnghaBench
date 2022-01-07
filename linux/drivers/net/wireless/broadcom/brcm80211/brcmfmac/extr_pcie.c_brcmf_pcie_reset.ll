; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcmf_pciedev* }
%struct.brcmf_pciedev = type { %struct.brcmf_pciedev_info* }
%struct.brcmf_pciedev_info = type { i32 }
%struct.brcmf_fw_request = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to prepare FW request\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@brcmf_pcie_setup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @brcmf_pcie_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_reset(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.brcmf_bus*, align 8
  %5 = alloca %struct.brcmf_pciedev*, align 8
  %6 = alloca %struct.brcmf_pciedev_info*, align 8
  %7 = alloca %struct.brcmf_fw_request*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %9)
  store %struct.brcmf_bus* %10, %struct.brcmf_bus** %4, align 8
  %11 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %12 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.brcmf_pciedev*, %struct.brcmf_pciedev** %13, align 8
  store %struct.brcmf_pciedev* %14, %struct.brcmf_pciedev** %5, align 8
  %15 = load %struct.brcmf_pciedev*, %struct.brcmf_pciedev** %5, align 8
  %16 = getelementptr inbounds %struct.brcmf_pciedev, %struct.brcmf_pciedev* %15, i32 0, i32 0
  %17 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %16, align 8
  store %struct.brcmf_pciedev_info* %17, %struct.brcmf_pciedev_info** %6, align 8
  %18 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %19 = call i32 @brcmf_pcie_bus_console_read(%struct.brcmf_pciedev_info* %18, i32 1)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @brcmf_detach(%struct.device* %20)
  %22 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %23 = call i32 @brcmf_pcie_release_irq(%struct.brcmf_pciedev_info* %22)
  %24 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %25 = call i32 @brcmf_pcie_release_scratchbuffers(%struct.brcmf_pciedev_info* %24)
  %26 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %27 = call i32 @brcmf_pcie_release_ringbuffers(%struct.brcmf_pciedev_info* %26)
  %28 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %29 = call i32 @brcmf_pcie_reset_device(%struct.brcmf_pciedev_info* %28)
  %30 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %31 = call %struct.brcmf_fw_request* @brcmf_pcie_prepare_fw_request(%struct.brcmf_pciedev_info* %30)
  store %struct.brcmf_fw_request* %31, %struct.brcmf_fw_request** %7, align 8
  %32 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %33 = icmp ne %struct.brcmf_fw_request* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %1
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %53

39:                                               ; preds = %1
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %42 = load i32, i32* @brcmf_pcie_setup, align 4
  %43 = call i32 @brcmf_fw_get_firmwares(%struct.device* %40, %struct.brcmf_fw_request* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %50 = call i32 @kfree(%struct.brcmf_fw_request* %49)
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %34
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_pcie_bus_console_read(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @brcmf_detach(%struct.device*) #1

declare dso_local i32 @brcmf_pcie_release_irq(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_release_scratchbuffers(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_release_ringbuffers(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_reset_device(%struct.brcmf_pciedev_info*) #1

declare dso_local %struct.brcmf_fw_request* @brcmf_pcie_prepare_fw_request(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @brcmf_fw_get_firmwares(%struct.device*, %struct.brcmf_fw_request*, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_fw_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
