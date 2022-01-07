; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_set_rx_vlan_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_set_rx_vlan_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_vlan_cfg = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_SET_RX_VLAN_OFFLOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Failed to set rx vlan offload, err: %d, status: 0x%x, out size: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_set_rx_vlan_offload(%struct.hinic_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_hwdev*, align 8
  %7 = alloca %struct.hinic_vlan_cfg, align 8
  %8 = alloca %struct.hinic_hwif*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %12, i32 0, i32 0
  %14 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %13, align 8
  store %struct.hinic_hwdev* %14, %struct.hinic_hwdev** %6, align 8
  %15 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %16 = icmp ne %struct.hinic_hwdev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %22 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %21, i32 0, i32 0
  %23 = load %struct.hinic_hwif*, %struct.hinic_hwif** %22, align 8
  store %struct.hinic_hwif* %23, %struct.hinic_hwif** %8, align 8
  %24 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %25 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %24, i32 0, i32 0
  %26 = load %struct.pci_dev*, %struct.pci_dev** %25, align 8
  store %struct.pci_dev* %26, %struct.pci_dev** %9, align 8
  %27 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %28 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %27)
  %29 = getelementptr inbounds %struct.hinic_vlan_cfg, %struct.hinic_vlan_cfg* %7, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds %struct.hinic_vlan_cfg, %struct.hinic_vlan_cfg* %7, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %33 = load i32, i32* @HINIC_PORT_CMD_SET_RX_VLAN_OFFLOAD, align 4
  %34 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %32, i32 %33, %struct.hinic_vlan_cfg* %7, i32 16, %struct.hinic_vlan_cfg* %7, i32* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.hinic_vlan_cfg, %struct.hinic_vlan_cfg* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40, %37, %20
  %45 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds %struct.hinic_vlan_cfg, %struct.hinic_vlan_cfg* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %49, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %44, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_vlan_cfg*, i32, %struct.hinic_vlan_cfg*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
