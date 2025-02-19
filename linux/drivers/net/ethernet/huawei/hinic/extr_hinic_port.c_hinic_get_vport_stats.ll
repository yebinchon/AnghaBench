; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_get_vport_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_get_vport_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_vport_stats = type { i32 }
%struct.hinic_cmd_vport_stats = type { i32, i64, i32 }
%struct.hinic_port_stats_info = type { i32, i32, i32, i32 }

@HINIC_PORT_STATS_VERSION = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_GET_VPORT_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Failed to get function statistics, err: %d, status: 0x%x, out size: 0x%x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_get_vport_stats(%struct.hinic_dev* %0, %struct.hinic_vport_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca %struct.hinic_vport_stats*, align 8
  %6 = alloca %struct.hinic_cmd_vport_stats, align 8
  %7 = alloca %struct.hinic_port_stats_info, align 4
  %8 = alloca %struct.hinic_hwdev*, align 8
  %9 = alloca %struct.hinic_hwif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store %struct.hinic_vport_stats* %1, %struct.hinic_vport_stats** %5, align 8
  %13 = bitcast %struct.hinic_cmd_vport_stats* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = bitcast %struct.hinic_port_stats_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %15, i32 0, i32 0
  %17 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %16, align 8
  store %struct.hinic_hwdev* %17, %struct.hinic_hwdev** %8, align 8
  %18 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %8, align 8
  %19 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %18, i32 0, i32 0
  %20 = load %struct.hinic_hwif*, %struct.hinic_hwif** %19, align 8
  store %struct.hinic_hwif* %20, %struct.hinic_hwif** %9, align 8
  store i32 24, i32* %10, align 4
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %22 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %11, align 8
  %24 = load i32, i32* @HINIC_PORT_STATS_VERSION, align 4
  %25 = getelementptr inbounds %struct.hinic_port_stats_info, %struct.hinic_port_stats_info* %7, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %27 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %26)
  %28 = getelementptr inbounds %struct.hinic_port_stats_info, %struct.hinic_port_stats_info* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.hinic_port_stats_info, %struct.hinic_port_stats_info* %7, i32 0, i32 0
  store i32 24, i32* %29, align 4
  %30 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %8, align 8
  %31 = load i32, i32* @HINIC_PORT_CMD_GET_VPORT_STAT, align 4
  %32 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %30, i32 %31, %struct.hinic_port_stats_info* %7, i32 16, %struct.hinic_cmd_vport_stats* %6, i32* %10)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.hinic_cmd_vport_stats, %struct.hinic_cmd_vport_stats* %6, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38, %35, %2
  %43 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds %struct.hinic_cmd_vport_stats, %struct.hinic_cmd_vport_stats* %6, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %47, i32 %48)
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %38
  %53 = load %struct.hinic_vport_stats*, %struct.hinic_vport_stats** %5, align 8
  %54 = getelementptr inbounds %struct.hinic_cmd_vport_stats, %struct.hinic_cmd_vport_stats* %6, i32 0, i32 0
  %55 = call i32 @memcpy(%struct.hinic_vport_stats* %53, i32* %54, i32 4)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %42
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #2

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_port_stats_info*, i32, %struct.hinic_cmd_vport_stats*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32) #2

declare dso_local i32 @memcpy(%struct.hinic_vport_stats*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
