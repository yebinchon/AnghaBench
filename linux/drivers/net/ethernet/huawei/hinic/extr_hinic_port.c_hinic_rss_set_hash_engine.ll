; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_rss_set_hash_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_rss_set_hash_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_rss_engine_type = type { i64, i8*, i8*, i32, i32 }

@HINIC_PORT_CMD_SET_RSS_HASH_ENGINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Failed to set hash engine, err: %d, status: 0x%x, out size: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_rss_set_hash_engine(%struct.hinic_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hinic_rss_engine_type, align 8
  %9 = alloca %struct.hinic_hwdev*, align 8
  %10 = alloca %struct.hinic_hwif*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = bitcast %struct.hinic_rss_engine_type* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %16 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %15, i32 0, i32 0
  %17 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %16, align 8
  store %struct.hinic_hwdev* %17, %struct.hinic_hwdev** %9, align 8
  %18 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %19 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %18, i32 0, i32 0
  %20 = load %struct.hinic_hwif*, %struct.hinic_hwif** %19, align 8
  store %struct.hinic_hwif* %20, %struct.hinic_hwif** %10, align 8
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %10, align 8
  %22 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %11, align 8
  %24 = load %struct.hinic_hwif*, %struct.hinic_hwif** %10, align 8
  %25 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %24)
  %26 = getelementptr inbounds %struct.hinic_rss_engine_type, %struct.hinic_rss_engine_type* %8, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds %struct.hinic_rss_engine_type, %struct.hinic_rss_engine_type* %8, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds %struct.hinic_rss_engine_type, %struct.hinic_rss_engine_type* %8, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %32 = load i32, i32* @HINIC_PORT_CMD_SET_RSS_HASH_ENGINE, align 4
  %33 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %31, i32 %32, %struct.hinic_rss_engine_type* %8, i32 32, %struct.hinic_rss_engine_type* %8, i32* %12)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.hinic_rss_engine_type, %struct.hinic_rss_engine_type* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39, %36, %3
  %44 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %13, align 4
  %47 = getelementptr inbounds %struct.hinic_rss_engine_type, %struct.hinic_rss_engine_type* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %48, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #2

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_rss_engine_type*, i32, %struct.hinic_rss_engine_type*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
