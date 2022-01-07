; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_set_rx_lro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_set_rx_lro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_lro_config = type { i64, i8*, i8*, i8*, i32, i32 }

@HINIC_PORT_CMD_SET_LRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to set lro offload, ret = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_dev*, i8*, i8*, i8*)* @hinic_set_rx_lro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinic_set_rx_lro(%struct.hinic_dev* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hinic_hwdev*, align 8
  %11 = alloca %struct.hinic_hwif*, align 8
  %12 = alloca %struct.hinic_lro_config, align 8
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %17 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %16, i32 0, i32 0
  %18 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %17, align 8
  store %struct.hinic_hwdev* %18, %struct.hinic_hwdev** %10, align 8
  %19 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %10, align 8
  %20 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %19, i32 0, i32 0
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %20, align 8
  store %struct.hinic_hwif* %21, %struct.hinic_hwif** %11, align 8
  %22 = bitcast %struct.hinic_lro_config* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 40, i1 false)
  %23 = load %struct.hinic_hwif*, %struct.hinic_hwif** %11, align 8
  %24 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  store %struct.pci_dev* %25, %struct.pci_dev** %13, align 8
  store i32 40, i32* %14, align 4
  %26 = load %struct.hinic_hwif*, %struct.hinic_hwif** %11, align 8
  %27 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %26)
  %28 = getelementptr inbounds %struct.hinic_lro_config, %struct.hinic_lro_config* %12, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds %struct.hinic_lro_config, %struct.hinic_lro_config* %12, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds %struct.hinic_lro_config, %struct.hinic_lro_config* %12, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds %struct.hinic_lro_config, %struct.hinic_lro_config* %12, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %10, align 8
  %36 = load i32, i32* @HINIC_PORT_CMD_SET_LRO, align 4
  %37 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %35, i32 %36, %struct.hinic_lro_config* %12, i32 40, %struct.hinic_lro_config* %12, i32* %14)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.hinic_lro_config, %struct.hinic_lro_config* %12, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43, %40, %4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.hinic_lro_config, %struct.hinic_lro_config* %12, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #2

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_lro_config*, i32, %struct.hinic_lro_config*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
