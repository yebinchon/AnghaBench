; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_get_base_qpn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_get_base_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_cmd_base_qpn = type { i32, i64, i32 }

@HINIC_PORT_CMD_GET_GLOBAL_QPN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to get base qpn, status = %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_hwdev*, i32*)* @get_base_qpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_base_qpn(%struct.hinic_hwdev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_hwdev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hinic_cmd_base_qpn, align 8
  %7 = alloca %struct.hinic_hwif*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hinic_hwdev* %0, %struct.hinic_hwdev** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %4, align 8
  %12 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %11, i32 0, i32 0
  %13 = load %struct.hinic_hwif*, %struct.hinic_hwif** %12, align 8
  store %struct.hinic_hwif* %13, %struct.hinic_hwif** %7, align 8
  %14 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  %15 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  %18 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %17)
  %19 = getelementptr inbounds %struct.hinic_cmd_base_qpn, %struct.hinic_cmd_base_qpn* %6, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %4, align 8
  %21 = load i32, i32* @HINIC_PORT_CMD_GET_GLOBAL_QPN, align 4
  %22 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %20, i32 %21, %struct.hinic_cmd_base_qpn* %6, i32 24, %struct.hinic_cmd_base_qpn* %6, i32* %9)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 24
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.hinic_cmd_base_qpn, %struct.hinic_cmd_base_qpn* %6, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29, %25, %2
  %34 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.hinic_cmd_base_qpn, %struct.hinic_cmd_base_qpn* %6, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.hinic_cmd_base_qpn, %struct.hinic_cmd_base_qpn* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_cmd_base_qpn*, i32, %struct.hinic_cmd_base_qpn*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
