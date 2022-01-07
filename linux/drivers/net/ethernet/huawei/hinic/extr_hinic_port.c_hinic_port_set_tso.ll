; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_set_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_set_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_tso_config = type { i32, i64, i32, i32 }

@HINIC_PORT_CMD_SET_TSO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to set port tso, ret = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_port_set_tso(%struct.hinic_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_hwdev*, align 8
  %7 = alloca %struct.hinic_hwif*, align 8
  %8 = alloca %struct.hinic_tso_config, align 8
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
  store %struct.hinic_hwif* %17, %struct.hinic_hwif** %7, align 8
  %18 = bitcast %struct.hinic_tso_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  %20 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %9, align 8
  %22 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  %23 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %22)
  %24 = getelementptr inbounds %struct.hinic_tso_config, %struct.hinic_tso_config* %8, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.hinic_tso_config, %struct.hinic_tso_config* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %28 = load i32, i32* @HINIC_PORT_CMD_SET_TSO, align 4
  %29 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %27, i32 %28, %struct.hinic_tso_config* %8, i32 24, %struct.hinic_tso_config* %8, i32* %10)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 24
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.hinic_tso_config, %struct.hinic_tso_config* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36, %32, %2
  %41 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.hinic_tso_config, %struct.hinic_tso_config* %8, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #2

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_tso_config*, i32, %struct.hinic_tso_config*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
