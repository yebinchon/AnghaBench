; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_rss_template_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_rss_template_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_rss_template_mgmt = type { i64, i32, i32, i32, i32 }

@NIC_RSS_CMD_TEMP_FREE = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_RSS_TEMP_MGR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Failed to free rss template, err: %d, status: 0x%x, out size: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_rss_template_free(%struct.hinic_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_rss_template_mgmt, align 8
  %7 = alloca %struct.hinic_hwdev*, align 8
  %8 = alloca %struct.hinic_hwif*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast %struct.hinic_rss_template_mgmt* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %13, i32 0, i32 0
  %15 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %14, align 8
  store %struct.hinic_hwdev* %15, %struct.hinic_hwdev** %7, align 8
  %16 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %17 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %16, i32 0, i32 0
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %17, align 8
  store %struct.hinic_hwif* %18, %struct.hinic_hwif** %8, align 8
  %19 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %20 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %9, align 8
  %22 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %23 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %22)
  %24 = getelementptr inbounds %struct.hinic_rss_template_mgmt, %struct.hinic_rss_template_mgmt* %6, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.hinic_rss_template_mgmt, %struct.hinic_rss_template_mgmt* %6, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @NIC_RSS_CMD_TEMP_FREE, align 4
  %28 = getelementptr inbounds %struct.hinic_rss_template_mgmt, %struct.hinic_rss_template_mgmt* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %30 = load i32, i32* @HINIC_PORT_CMD_RSS_TEMP_MGR, align 4
  %31 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %29, i32 %30, %struct.hinic_rss_template_mgmt* %6, i32 24, %struct.hinic_rss_template_mgmt* %6, i32* %10)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.hinic_rss_template_mgmt, %struct.hinic_rss_template_mgmt* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37, %34, %2
  %42 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %11, align 4
  %45 = getelementptr inbounds %struct.hinic_rss_template_mgmt, %struct.hinic_rss_template_mgmt* %6, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %46, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #2

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_rss_template_mgmt*, i32, %struct.hinic_rss_template_mgmt*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
