; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@QLCNIC_FW_VERSION_MAJOR = common dso_local global i32 0, align 4
@QLCNIC_FW_VERSION_MINOR = common dso_local global i32 0, align 4
@QLCNIC_FW_VERSION_SUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Driver v%s, firmware version %d.%d.%d\0A\00", align 1
@QLCNIC_LINUX_VERSIONID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_get_fw_version(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = load i32, i32* @QLCNIC_FW_VERSION_MAJOR, align 4
  %12 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %14 = load i32, i32* @QLCNIC_FW_VERSION_MINOR, align 4
  %15 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %17 = load i32, i32* @QLCNIC_FW_VERSION_SUB, align 4
  %18 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @QLCNIC_VERSION_CODE(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* @QLCNIC_LINUX_VERSIONID, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_info(i32* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  ret i32 %34
}

declare dso_local i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLCNIC_VERSION_CODE(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
