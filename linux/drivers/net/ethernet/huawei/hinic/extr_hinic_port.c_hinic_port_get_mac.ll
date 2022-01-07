; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_get_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_port_mac_cmd = type { i32, i64, i32 }

@HINIC_PORT_CMD_GET_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get mac, ret = %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_port_get_mac(%struct.hinic_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hinic_hwdev*, align 8
  %7 = alloca %struct.hinic_port_mac_cmd, align 8
  %8 = alloca %struct.hinic_hwif*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %12, i32 0, i32 0
  %14 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %13, align 8
  store %struct.hinic_hwdev* %14, %struct.hinic_hwdev** %6, align 8
  %15 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %16 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %15, i32 0, i32 0
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %16, align 8
  store %struct.hinic_hwif* %17, %struct.hinic_hwif** %8, align 8
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %19 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %9, align 8
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %22 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %21)
  %23 = getelementptr inbounds %struct.hinic_port_mac_cmd, %struct.hinic_port_mac_cmd* %7, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %25 = load i32, i32* @HINIC_PORT_CMD_GET_MAC, align 4
  %26 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %24, i32 %25, %struct.hinic_port_mac_cmd* %7, i32 24, %struct.hinic_port_mac_cmd* %7, i32* %10)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 24
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.hinic_port_mac_cmd, %struct.hinic_port_mac_cmd* %7, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33, %29, %2
  %38 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.hinic_port_mac_cmd, %struct.hinic_port_mac_cmd* %7, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %33
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds %struct.hinic_port_mac_cmd, %struct.hinic_port_mac_cmd* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i32* %46, i32 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %37
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_port_mac_cmd*, i32, %struct.hinic_port_mac_cmd*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
