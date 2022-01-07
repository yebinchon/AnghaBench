; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_set_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev*, %struct.net_device* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.hinic_port_mtu_cmd = type { i32, i64, i32 }

@HINIC_MIN_MTU_SIZE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"mtu < MIN MTU size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@HINIC_MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"mtu > MAX MTU size\00", align 1
@HINIC_PORT_CMD_CHANGE_MTU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to set mtu, ret = %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_port_set_mtu(%struct.hinic_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.hinic_hwdev*, align 8
  %8 = alloca %struct.hinic_port_mtu_cmd, align 8
  %9 = alloca %struct.hinic_hwif*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %17, i32 0, i32 0
  %19 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %18, align 8
  store %struct.hinic_hwdev* %19, %struct.hinic_hwdev** %7, align 8
  %20 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %21 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %20, i32 0, i32 0
  %22 = load %struct.hinic_hwif*, %struct.hinic_hwif** %21, align 8
  store %struct.hinic_hwif* %22, %struct.hinic_hwif** %9, align 8
  %23 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %24 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  store %struct.pci_dev* %25, %struct.pci_dev** %10, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @HINIC_MIN_MTU_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %31 = load i32, i32* @drv, align 4
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = call i32 @netif_err(%struct.hinic_dev* %30, i32 %31, %struct.net_device* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %80

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ETH_HLEN, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* @ETH_FCS_LEN, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @HINIC_MAX_JUMBO_FRAME_SIZE, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %47 = load i32, i32* @drv, align 4
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = call i32 @netif_err(%struct.hinic_dev* %46, i32 %47, %struct.net_device* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %80

52:                                               ; preds = %36
  %53 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %54 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %53)
  %55 = getelementptr inbounds %struct.hinic_port_mtu_cmd, %struct.hinic_port_mtu_cmd* %8, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = getelementptr inbounds %struct.hinic_port_mtu_cmd, %struct.hinic_port_mtu_cmd* %8, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %59 = load i32, i32* @HINIC_PORT_CMD_CHANGE_MTU, align 4
  %60 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %58, i32 %59, %struct.hinic_port_mtu_cmd* %8, i32 24, %struct.hinic_port_mtu_cmd* %8, i32* %13)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %65, 24
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.hinic_port_mtu_cmd, %struct.hinic_port_mtu_cmd* %8, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67, %63, %52
  %72 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.hinic_port_mtu_cmd, %struct.hinic_port_mtu_cmd* %8, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @EFAULT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %71, %45, %29
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @netif_err(%struct.hinic_dev*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_port_mtu_cmd*, i32, %struct.hinic_port_mtu_cmd*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
