; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_get_phy_port_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_get_phy_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_phy_port_stats = type { i32 }
%struct.hinic_port_stats_info = type { i32, i32, i32 }
%struct.hinic_port_stats = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HINIC_PORT_STATS_VERSION = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_GET_PORT_STATISTICS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Failed to get port statistics, err: %d, status: 0x%x, out size: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_get_phy_port_stats(%struct.hinic_dev* %0, %struct.hinic_phy_port_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca %struct.hinic_phy_port_stats*, align 8
  %6 = alloca %struct.hinic_port_stats_info, align 4
  %7 = alloca %struct.hinic_hwdev*, align 8
  %8 = alloca %struct.hinic_hwif*, align 8
  %9 = alloca %struct.hinic_port_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store %struct.hinic_phy_port_stats* %1, %struct.hinic_phy_port_stats** %5, align 8
  %13 = bitcast %struct.hinic_port_stats_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %14, i32 0, i32 0
  %16 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %15, align 8
  store %struct.hinic_hwdev* %16, %struct.hinic_hwdev** %7, align 8
  %17 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %18 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %17, i32 0, i32 0
  %19 = load %struct.hinic_hwif*, %struct.hinic_hwif** %18, align 8
  store %struct.hinic_hwif* %19, %struct.hinic_hwif** %8, align 8
  store i32 16, i32* %10, align 4
  %20 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %21 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %20, i32 0, i32 0
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %11, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.hinic_port_stats* @kzalloc(i32 16, i32 %23)
  store %struct.hinic_port_stats* %24, %struct.hinic_port_stats** %9, align 8
  %25 = load %struct.hinic_port_stats*, %struct.hinic_port_stats** %9, align 8
  %26 = icmp ne %struct.hinic_port_stats* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %68

30:                                               ; preds = %2
  %31 = load i32, i32* @HINIC_PORT_STATS_VERSION, align 4
  %32 = getelementptr inbounds %struct.hinic_port_stats_info, %struct.hinic_port_stats_info* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.hinic_port_stats_info, %struct.hinic_port_stats_info* %6, i32 0, i32 0
  store i32 16, i32* %33, align 4
  %34 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %35 = load i32, i32* @HINIC_PORT_CMD_GET_PORT_STATISTICS, align 4
  %36 = load %struct.hinic_port_stats*, %struct.hinic_port_stats** %9, align 8
  %37 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %34, i32 %35, %struct.hinic_port_stats_info* %6, i32 12, %struct.hinic_port_stats* %36, i32* %10)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.hinic_port_stats*, %struct.hinic_port_stats** %9, align 8
  %45 = getelementptr inbounds %struct.hinic_port_stats, %struct.hinic_port_stats* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43, %40, %30
  %49 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.hinic_port_stats*, %struct.hinic_port_stats** %9, align 8
  %53 = getelementptr inbounds %struct.hinic_port_stats, %struct.hinic_port_stats* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %54, i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %64

59:                                               ; preds = %43
  %60 = load %struct.hinic_phy_port_stats*, %struct.hinic_phy_port_stats** %5, align 8
  %61 = load %struct.hinic_port_stats*, %struct.hinic_port_stats** %9, align 8
  %62 = getelementptr inbounds %struct.hinic_port_stats, %struct.hinic_port_stats* %61, i32 0, i32 0
  %63 = call i32 @memcpy(%struct.hinic_phy_port_stats* %60, i32* %62, i32 4)
  br label %64

64:                                               ; preds = %59, %48
  %65 = load %struct.hinic_port_stats*, %struct.hinic_port_stats** %9, align 8
  %66 = call i32 @kfree(%struct.hinic_port_stats* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %27
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.hinic_port_stats* @kzalloc(i32, i32) #2

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_port_stats_info*, i32, %struct.hinic_port_stats*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32) #2

declare dso_local i32 @memcpy(%struct.hinic_phy_port_stats*, i32*, i32) #2

declare dso_local i32 @kfree(%struct.hinic_port_stats*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
