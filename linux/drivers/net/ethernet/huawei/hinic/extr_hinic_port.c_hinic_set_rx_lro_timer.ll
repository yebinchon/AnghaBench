; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_set_rx_lro_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_set_rx_lro_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_lro_timer = type { i32, i32, i32, i64, i32 }

@HINIC_PORT_CMD_SET_LRO_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Set lro timer not supported by the current FW version, it will be 1ms default\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set lro timer, ret = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_dev*, i32)* @hinic_set_rx_lro_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinic_set_rx_lro_timer(%struct.hinic_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_hwdev*, align 8
  %7 = alloca %struct.hinic_lro_timer, align 8
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
  %15 = bitcast %struct.hinic_lro_timer* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %17 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %16, i32 0, i32 0
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %17, align 8
  store %struct.hinic_hwif* %18, %struct.hinic_hwif** %8, align 8
  %19 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %20 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %9, align 8
  store i32 32, i32* %10, align 4
  %22 = getelementptr inbounds %struct.hinic_lro_timer, %struct.hinic_lro_timer* %7, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.hinic_lro_timer, %struct.hinic_lro_timer* %7, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.hinic_lro_timer, %struct.hinic_lro_timer* %7, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.hinic_lro_timer, %struct.hinic_lro_timer* %7, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %28 = load i32, i32* @HINIC_PORT_CMD_SET_LRO_TIMER, align 4
  %29 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %27, i32 %28, %struct.hinic_lro_timer* %7, i32 32, %struct.hinic_lro_timer* %7, i32* %10)
  store i32 %29, i32* %11, align 4
  %30 = getelementptr inbounds %struct.hinic_lro_timer, %struct.hinic_lro_timer* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.hinic_lro_timer, %struct.hinic_lro_timer* %7, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %2
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.hinic_lro_timer, %struct.hinic_lro_timer* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44, %41, %38
  %49 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.hinic_lro_timer, %struct.hinic_lro_timer* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %48
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_lro_timer*, i32, %struct.hinic_lro_timer*, i32*) #2

declare dso_local i32 @dev_dbg(i32*, i8*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
