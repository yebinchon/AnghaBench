; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_get_mgmt_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_get_mgmt_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_version_info = type { i8*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_GET_MGMT_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Failed to get mgmt version, err: %d, status: 0x%x, out size: 0x%x\0A\00", align 1
@HINIC_MGMT_VERSION_MAX_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_get_mgmt_version(%struct.hinic_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hinic_hwdev*, align 8
  %7 = alloca %struct.hinic_version_info, align 8
  %8 = alloca %struct.hinic_hwif*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %12, i32 0, i32 0
  %14 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %13, align 8
  store %struct.hinic_hwdev* %14, %struct.hinic_hwdev** %6, align 8
  %15 = bitcast %struct.hinic_version_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %17 = icmp ne %struct.hinic_hwdev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %2
  %22 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %23 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %22, i32 0, i32 0
  %24 = load %struct.hinic_hwif*, %struct.hinic_hwif** %23, align 8
  store %struct.hinic_hwif* %24, %struct.hinic_hwif** %8, align 8
  %25 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %26 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %25, i32 0, i32 0
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %9, align 8
  %28 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %29 = load i32, i32* @HINIC_PORT_CMD_GET_MGMT_VERSION, align 4
  %30 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %28, i32 %29, %struct.hinic_version_info* %7, i32 24, %struct.hinic_version_info* %7, i32* %10)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.hinic_version_info, %struct.hinic_version_info* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36, %33, %21
  %41 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %11, align 4
  %44 = getelementptr inbounds %struct.hinic_version_info, %struct.hinic_version_info* %7, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %45, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %56

50:                                               ; preds = %36
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @HINIC_MGMT_VERSION_MAX_LEN, align 4
  %53 = getelementptr inbounds %struct.hinic_version_info, %struct.hinic_version_info* %7, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @snprintf(i32* %51, i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %40, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_version_info*, i32, %struct.hinic_version_info*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32) #2

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
