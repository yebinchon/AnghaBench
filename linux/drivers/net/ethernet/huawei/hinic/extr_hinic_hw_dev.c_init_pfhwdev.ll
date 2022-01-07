; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_init_pfhwdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_init_pfhwdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pfhwdev = type { i32, %struct.hinic_hwdev }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to initialize PF to MGMT channel\0A\00", align 1
@HINIC_MOD_L2NIC = common dso_local global i32 0, align 4
@nic_mgmt_msg_handler = common dso_local global i32 0, align 4
@HINIC_PF_MGMT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_pfhwdev*)* @init_pfhwdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pfhwdev(%struct.hinic_pfhwdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_pfhwdev*, align 8
  %4 = alloca %struct.hinic_hwdev*, align 8
  %5 = alloca %struct.hinic_hwif*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.hinic_pfhwdev* %0, %struct.hinic_pfhwdev** %3, align 8
  %8 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %3, align 8
  %9 = getelementptr inbounds %struct.hinic_pfhwdev, %struct.hinic_pfhwdev* %8, i32 0, i32 1
  store %struct.hinic_hwdev* %9, %struct.hinic_hwdev** %4, align 8
  %10 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %4, align 8
  %11 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %10, i32 0, i32 0
  %12 = load %struct.hinic_hwif*, %struct.hinic_hwif** %11, align 8
  store %struct.hinic_hwif* %12, %struct.hinic_hwif** %5, align 8
  %13 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %14 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %6, align 8
  %16 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %3, align 8
  %17 = getelementptr inbounds %struct.hinic_pfhwdev, %struct.hinic_pfhwdev* %16, i32 0, i32 0
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %19 = call i32 @hinic_pf_to_mgmt_init(i32* %17, %struct.hinic_hwif* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %1
  %28 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %3, align 8
  %29 = getelementptr inbounds %struct.hinic_pfhwdev, %struct.hinic_pfhwdev* %28, i32 0, i32 0
  %30 = load i32, i32* @HINIC_MOD_L2NIC, align 4
  %31 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %3, align 8
  %32 = load i32, i32* @nic_mgmt_msg_handler, align 4
  %33 = call i32 @hinic_register_mgmt_msg_cb(i32* %29, i32 %30, %struct.hinic_pfhwdev* %31, i32 %32)
  %34 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %35 = load i32, i32* @HINIC_PF_MGMT_ACTIVE, align 4
  %36 = call i32 @hinic_set_pf_action(%struct.hinic_hwif* %34, i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %27, %22
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @hinic_pf_to_mgmt_init(i32*, %struct.hinic_hwif*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hinic_register_mgmt_msg_cb(i32*, i32, %struct.hinic_pfhwdev*, i32) #1

declare dso_local i32 @hinic_set_pf_action(%struct.hinic_hwif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
