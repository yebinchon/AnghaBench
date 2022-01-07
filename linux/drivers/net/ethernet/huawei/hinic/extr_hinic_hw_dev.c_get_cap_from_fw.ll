; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_get_cap_from_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_get_cap_from_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pfhwdev = type { i32, %struct.hinic_hwdev }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_dev_cap = type { i32 }

@HINIC_MOD_CFGM = common dso_local global i32 0, align 4
@HINIC_CFG_NIC_CAP = common dso_local global i32 0, align 4
@HINIC_MGMT_MSG_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to get capability from FW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_pfhwdev*)* @get_cap_from_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cap_from_fw(%struct.hinic_pfhwdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_pfhwdev*, align 8
  %4 = alloca %struct.hinic_hwdev*, align 8
  %5 = alloca %struct.hinic_hwif*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.hinic_dev_cap, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hinic_pfhwdev* %0, %struct.hinic_pfhwdev** %3, align 8
  %11 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %3, align 8
  %12 = getelementptr inbounds %struct.hinic_pfhwdev, %struct.hinic_pfhwdev* %11, i32 0, i32 1
  store %struct.hinic_hwdev* %12, %struct.hinic_hwdev** %4, align 8
  %13 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %4, align 8
  %14 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %13, i32 0, i32 0
  %15 = load %struct.hinic_hwif*, %struct.hinic_hwif** %14, align 8
  store %struct.hinic_hwif* %15, %struct.hinic_hwif** %5, align 8
  %16 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %17 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %19 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %3, align 8
  %20 = getelementptr inbounds %struct.hinic_pfhwdev, %struct.hinic_pfhwdev* %19, i32 0, i32 0
  %21 = load i32, i32* @HINIC_MOD_CFGM, align 4
  %22 = load i32, i32* @HINIC_CFG_NIC_CAP, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @HINIC_MGMT_MSG_SYNC, align 4
  %25 = call i32 @hinic_msg_to_mgmt(i32* %20, i32 %21, i32 %22, %struct.hinic_dev_cap* %7, i32 %23, %struct.hinic_dev_cap* %7, i32* %9, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %4, align 8
  %35 = call i32 @get_capability(%struct.hinic_hwdev* %34, %struct.hinic_dev_cap* %7)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @hinic_msg_to_mgmt(i32*, i32, i32, %struct.hinic_dev_cap*, i32, %struct.hinic_dev_cap*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @get_capability(%struct.hinic_hwdev*, %struct.hinic_dev_cap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
