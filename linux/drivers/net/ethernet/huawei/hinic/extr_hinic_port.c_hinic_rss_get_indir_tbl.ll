; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_rss_get_indir_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_rss_get_indir_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_rss_indir_table = type { i32*, i64, i32, i32, i32 }

@HINIC_PORT_CMD_GET_RSS_TEMPLATE_INDIR_TBL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Failed to get indir table, err: %d, status: 0x%x, out size: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HINIC_RSS_INDIR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_rss_get_indir_tbl(%struct.hinic_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hinic_rss_indir_table, align 8
  %9 = alloca %struct.hinic_hwdev*, align 8
  %10 = alloca %struct.hinic_hwif*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = bitcast %struct.hinic_rss_indir_table* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %17 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %16, i32 0, i32 0
  %18 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %17, align 8
  store %struct.hinic_hwdev* %18, %struct.hinic_hwdev** %9, align 8
  %19 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %20 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %19, i32 0, i32 0
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %20, align 8
  store %struct.hinic_hwif* %21, %struct.hinic_hwif** %10, align 8
  %22 = load %struct.hinic_hwif*, %struct.hinic_hwif** %10, align 8
  %23 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %11, align 8
  store i32 32, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load %struct.hinic_hwif*, %struct.hinic_hwif** %10, align 8
  %26 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %25)
  %27 = getelementptr inbounds %struct.hinic_rss_indir_table, %struct.hinic_rss_indir_table* %8, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.hinic_rss_indir_table, %struct.hinic_rss_indir_table* %8, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %31 = load i32, i32* @HINIC_PORT_CMD_GET_RSS_TEMPLATE_INDIR_TBL, align 4
  %32 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %30, i32 %31, %struct.hinic_rss_indir_table* %8, i32 32, %struct.hinic_rss_indir_table* %8, i32* %12)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.hinic_rss_indir_table, %struct.hinic_rss_indir_table* %8, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38, %35, %3
  %43 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %13, align 4
  %46 = getelementptr inbounds %struct.hinic_rss_indir_table, %struct.hinic_rss_indir_table* %8, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %47, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %38
  %53 = getelementptr inbounds %struct.hinic_rss_indir_table, %struct.hinic_rss_indir_table* %8, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @HINIC_RSS_INDIR_SIZE, align 4
  %56 = call i32 @hinic_be32_to_cpu(i32* %54, i32 %55)
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %72, %52
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @HINIC_RSS_INDIR_SIZE, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.hinic_rss_indir_table, %struct.hinic_rss_indir_table* %8, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %57

75:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %42
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #2

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_rss_indir_table*, i32, %struct.hinic_rss_indir_table*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32) #2

declare dso_local i32 @hinic_be32_to_cpu(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
