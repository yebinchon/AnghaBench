; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_set_func_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_set_func_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_port_func_state_cmd = type { i32, i64, i32 }

@HINIC_PORT_CMD_SET_FUNC_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to set port func state, ret = %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_port_set_func_state(%struct.hinic_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_port_func_state_cmd, align 8
  %7 = alloca %struct.hinic_hwdev*, align 8
  %8 = alloca %struct.hinic_hwif*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %12, i32 0, i32 0
  %14 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %13, align 8
  store %struct.hinic_hwdev* %14, %struct.hinic_hwdev** %7, align 8
  %15 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %16 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %15, i32 0, i32 0
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %16, align 8
  store %struct.hinic_hwif* %17, %struct.hinic_hwif** %8, align 8
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %19 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %9, align 8
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %22 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %21)
  %23 = getelementptr inbounds %struct.hinic_port_func_state_cmd, %struct.hinic_port_func_state_cmd* %6, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds %struct.hinic_port_func_state_cmd, %struct.hinic_port_func_state_cmd* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %27 = load i32, i32* @HINIC_PORT_CMD_SET_FUNC_STATE, align 4
  %28 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %26, i32 %27, %struct.hinic_port_func_state_cmd* %6, i32 24, %struct.hinic_port_func_state_cmd* %6, i32* %10)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 24
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hinic_port_func_state_cmd, %struct.hinic_port_func_state_cmd* %6, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35, %31, %2
  %40 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.hinic_port_func_state_cmd, %struct.hinic_port_func_state_cmd* %6, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_port_func_state_cmd*, i32, %struct.hinic_port_func_state_cmd*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
