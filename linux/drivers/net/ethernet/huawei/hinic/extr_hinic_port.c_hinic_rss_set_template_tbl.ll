; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_rss_set_template_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_rss_set_template_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_rss_key = type { i64, i32, i32, i32, i32 }

@HINIC_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_SET_RSS_TEMPLATE_TBL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Failed to set rss hash key, err: %d, status: 0x%x, out size: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_rss_set_template_tbl(%struct.hinic_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hinic_hwdev*, align 8
  %9 = alloca %struct.hinic_hwif*, align 8
  %10 = alloca %struct.hinic_rss_key, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %15 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %14, i32 0, i32 0
  %16 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %15, align 8
  store %struct.hinic_hwdev* %16, %struct.hinic_hwdev** %8, align 8
  %17 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %8, align 8
  %18 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %17, i32 0, i32 0
  %19 = load %struct.hinic_hwif*, %struct.hinic_hwif** %18, align 8
  store %struct.hinic_hwif* %19, %struct.hinic_hwif** %9, align 8
  %20 = bitcast %struct.hinic_rss_key* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %22 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %11, align 8
  %24 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %25 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %24)
  %26 = getelementptr inbounds %struct.hinic_rss_key, %struct.hinic_rss_key* %10, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds %struct.hinic_rss_key, %struct.hinic_rss_key* %10, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.hinic_rss_key, %struct.hinic_rss_key* %10, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @HINIC_RSS_KEY_SIZE, align 4
  %33 = call i32 @memcpy(i32 %30, i32* %31, i32 %32)
  %34 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %8, align 8
  %35 = load i32, i32* @HINIC_PORT_CMD_SET_RSS_TEMPLATE_TBL, align 4
  %36 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %34, i32 %35, %struct.hinic_rss_key* %10, i32 24, %struct.hinic_rss_key* %10, i32* %12)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.hinic_rss_key, %struct.hinic_rss_key* %10, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42, %39, %3
  %47 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %13, align 4
  %50 = getelementptr inbounds %struct.hinic_rss_key, %struct.hinic_rss_key* %10, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %51, i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %46
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_rss_key*, i32, %struct.hinic_rss_key*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
