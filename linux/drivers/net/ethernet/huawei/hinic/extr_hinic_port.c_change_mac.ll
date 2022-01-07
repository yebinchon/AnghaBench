; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_change_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_change_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev*, %struct.net_device* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.hinic_port_mac_cmd = type { i64, i32, i64, i32 }

@VLAN_N_VID = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid VLAN number\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAC_SET = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_SET_MAC = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_DEL_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to change MAC, ret = %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_dev*, i32*, i64, i32)* @change_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_mac(%struct.hinic_dev* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.hinic_hwdev*, align 8
  %12 = alloca %struct.hinic_port_mac_cmd, align 8
  %13 = alloca %struct.hinic_hwif*, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %19 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %18, i32 0, i32 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %10, align 8
  %21 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %22 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %21, i32 0, i32 0
  %23 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %22, align 8
  store %struct.hinic_hwdev* %23, %struct.hinic_hwdev** %11, align 8
  %24 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %11, align 8
  %25 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %24, i32 0, i32 0
  %26 = load %struct.hinic_hwif*, %struct.hinic_hwif** %25, align 8
  store %struct.hinic_hwif* %26, %struct.hinic_hwif** %13, align 8
  %27 = load %struct.hinic_hwif*, %struct.hinic_hwif** %13, align 8
  %28 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %14, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @VLAN_N_VID, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %35 = load i32, i32* @drv, align 4
  %36 = load %struct.net_device*, %struct.net_device** %10, align 8
  %37 = call i32 @netif_err(%struct.hinic_dev* %34, i32 %35, %struct.net_device* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %80

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @MAC_SET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @HINIC_PORT_CMD_SET_MAC, align 4
  store i32 %45, i32* %15, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @HINIC_PORT_CMD_DEL_MAC, align 4
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load %struct.hinic_hwif*, %struct.hinic_hwif** %13, align 8
  %50 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %49)
  %51 = getelementptr inbounds %struct.hinic_port_mac_cmd, %struct.hinic_port_mac_cmd* %12, i32 0, i32 3
  store i32 %50, i32* %51, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.hinic_port_mac_cmd, %struct.hinic_port_mac_cmd* %12, i32 0, i32 2
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.hinic_port_mac_cmd, %struct.hinic_port_mac_cmd* %12, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @memcpy(i32 %55, i32* %56, i32 %57)
  %59 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %11, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %59, i32 %60, %struct.hinic_port_mac_cmd* %12, i32 32, %struct.hinic_port_mac_cmd* %12, i64* %16)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %48
  %65 = load i64, i64* %16, align 8
  %66 = icmp ne i64 %65, 32
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.hinic_port_mac_cmd, %struct.hinic_port_mac_cmd* %12, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67, %64, %48
  %72 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.hinic_port_mac_cmd, %struct.hinic_port_mac_cmd* %12, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @EFAULT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %71, %33
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @netif_err(%struct.hinic_dev*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_port_mac_cmd*, i32, %struct.hinic_port_mac_cmd*, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
