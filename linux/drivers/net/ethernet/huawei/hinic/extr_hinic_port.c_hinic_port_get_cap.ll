; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_get_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_get_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_port_cap = type { i64, i32 }

@HINIC_PORT_CMD_GET_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to get port capabilities, ret = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_port_get_cap(%struct.hinic_dev* %0, %struct.hinic_port_cap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca %struct.hinic_port_cap*, align 8
  %6 = alloca %struct.hinic_hwdev*, align 8
  %7 = alloca %struct.hinic_hwif*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store %struct.hinic_port_cap* %1, %struct.hinic_port_cap** %5, align 8
  %11 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %12 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %11, i32 0, i32 0
  %13 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %12, align 8
  store %struct.hinic_hwdev* %13, %struct.hinic_hwdev** %6, align 8
  %14 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %15 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %14, i32 0, i32 0
  %16 = load %struct.hinic_hwif*, %struct.hinic_hwif** %15, align 8
  store %struct.hinic_hwif* %16, %struct.hinic_hwif** %7, align 8
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  %18 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %17, i32 0, i32 0
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %8, align 8
  %20 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  %21 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %20)
  %22 = load %struct.hinic_port_cap*, %struct.hinic_port_cap** %5, align 8
  %23 = getelementptr inbounds %struct.hinic_port_cap, %struct.hinic_port_cap* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %25 = load i32, i32* @HINIC_PORT_CMD_GET_CAP, align 4
  %26 = load %struct.hinic_port_cap*, %struct.hinic_port_cap** %5, align 8
  %27 = load %struct.hinic_port_cap*, %struct.hinic_port_cap** %5, align 8
  %28 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %24, i32 %25, %struct.hinic_port_cap* %26, i32 16, %struct.hinic_port_cap* %27, i32* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 16
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load %struct.hinic_port_cap*, %struct.hinic_port_cap** %5, align 8
  %37 = getelementptr inbounds %struct.hinic_port_cap, %struct.hinic_port_cap* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35, %31, %2
  %41 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load %struct.hinic_port_cap*, %struct.hinic_port_cap** %5, align 8
  %44 = getelementptr inbounds %struct.hinic_port_cap, %struct.hinic_port_cap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_port_cap*, i32, %struct.hinic_port_cap*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
