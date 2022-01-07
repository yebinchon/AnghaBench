; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_port_state_cmd = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"unsupported PCI Function type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_SET_PORT_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to set port state, ret = %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_port_set_state(%struct.hinic_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_hwdev*, align 8
  %7 = alloca %struct.hinic_port_state_cmd, align 8
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
  %16 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %15, i32 0, i32 0
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %16, align 8
  store %struct.hinic_hwif* %17, %struct.hinic_hwif** %8, align 8
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %19 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %9, align 8
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %22 = call i32 @HINIC_IS_PF(%struct.hinic_hwif* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %26 = call i32 @HINIC_IS_PPF(%struct.hinic_hwif* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %59

34:                                               ; preds = %24, %2
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.hinic_port_state_cmd, %struct.hinic_port_state_cmd* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %38 = load i32, i32* @HINIC_PORT_CMD_SET_PORT_STATE, align 4
  %39 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %37, i32 %38, %struct.hinic_port_state_cmd* %7, i32 16, %struct.hinic_port_state_cmd* %7, i32* %10)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 16
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.hinic_port_state_cmd, %struct.hinic_port_state_cmd* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46, %42, %34
  %51 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.hinic_port_state_cmd, %struct.hinic_port_state_cmd* %7, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @EFAULT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %50, %28
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @HINIC_IS_PF(%struct.hinic_hwif*) #1

declare dso_local i32 @HINIC_IS_PPF(%struct.hinic_hwif*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_port_state_cmd*, i32, %struct.hinic_port_state_cmd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
