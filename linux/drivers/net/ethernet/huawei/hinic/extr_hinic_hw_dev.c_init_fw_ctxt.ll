; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_init_fw_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_init_fw_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_cmd_fw_ctxt = type { i64, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Unsupported PCI Function type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HINIC_RX_BUF_SZ = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_FWCTXT_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to init FW ctxt, ret = %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_hwdev*)* @init_fw_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_fw_ctxt(%struct.hinic_hwdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_hwdev*, align 8
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.hinic_cmd_fw_ctxt, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hinic_hwdev* %0, %struct.hinic_hwdev** %3, align 8
  %9 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %10 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %9, i32 0, i32 0
  %11 = load %struct.hinic_hwif*, %struct.hinic_hwif** %10, align 8
  store %struct.hinic_hwif* %11, %struct.hinic_hwif** %4, align 8
  %12 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %13 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %16 = call i32 @HINIC_IS_PF(%struct.hinic_hwif* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %20 = call i32 @HINIC_IS_PPF(%struct.hinic_hwif* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %56

28:                                               ; preds = %18, %1
  %29 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %30 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %29)
  %31 = getelementptr inbounds %struct.hinic_cmd_fw_ctxt, %struct.hinic_cmd_fw_ctxt* %6, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @HINIC_RX_BUF_SZ, align 4
  %33 = getelementptr inbounds %struct.hinic_cmd_fw_ctxt, %struct.hinic_cmd_fw_ctxt* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %35 = load i32, i32* @HINIC_PORT_CMD_FWCTXT_INIT, align 4
  %36 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %34, i32 %35, %struct.hinic_cmd_fw_ctxt* %6, i32 16, %struct.hinic_cmd_fw_ctxt* %6, i32* %7)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 16
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.hinic_cmd_fw_ctxt, %struct.hinic_cmd_fw_ctxt* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43, %39, %28
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.hinic_cmd_fw_ctxt, %struct.hinic_cmd_fw_ctxt* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %47, %22
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @HINIC_IS_PF(%struct.hinic_hwif*) #1

declare dso_local i32 @HINIC_IS_PPF(%struct.hinic_hwif*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_cmd_fw_ctxt*, i32, %struct.hinic_cmd_fw_ctxt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
