; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_get_rss_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_get_rss_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_rss_type = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hinic_rss_context_table = type { i32, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_GET_RSS_CTX_TBL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Failed to get hash type, err: %d, status: 0x%x, out size: 0x%x\0A\00", align 1
@IPV4 = common dso_local global i32 0, align 4
@IPV6 = common dso_local global i32 0, align 4
@IPV6_EXT = common dso_local global i32 0, align 4
@TCP_IPV4 = common dso_local global i32 0, align 4
@TCP_IPV6 = common dso_local global i32 0, align 4
@TCP_IPV6_EXT = common dso_local global i32 0, align 4
@UDP_IPV4 = common dso_local global i32 0, align 4
@UDP_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_get_rss_type(%struct.hinic_dev* %0, i32 %1, %struct.hinic_rss_type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hinic_rss_type*, align 8
  %8 = alloca %struct.hinic_rss_context_table, align 8
  %9 = alloca %struct.hinic_hwdev*, align 8
  %10 = alloca %struct.hinic_hwif*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hinic_rss_type* %2, %struct.hinic_rss_type** %7, align 8
  %14 = bitcast %struct.hinic_rss_context_table* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %16 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %15, i32 0, i32 0
  %17 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %16, align 8
  store %struct.hinic_hwdev* %17, %struct.hinic_hwdev** %9, align 8
  store i32 32, i32* %12, align 4
  %18 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %19 = icmp ne %struct.hinic_hwdev* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %7, align 8
  %22 = icmp ne %struct.hinic_rss_type* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %109

26:                                               ; preds = %20
  %27 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %28 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %27, i32 0, i32 0
  %29 = load %struct.hinic_hwif*, %struct.hinic_hwif** %28, align 8
  store %struct.hinic_hwif* %29, %struct.hinic_hwif** %10, align 8
  %30 = load %struct.hinic_hwif*, %struct.hinic_hwif** %10, align 8
  %31 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %30, i32 0, i32 0
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  store %struct.pci_dev* %32, %struct.pci_dev** %11, align 8
  %33 = load %struct.hinic_hwif*, %struct.hinic_hwif** %10, align 8
  %34 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %33)
  %35 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %39 = load i32, i32* @HINIC_PORT_CMD_GET_RSS_CTX_TBL, align 4
  %40 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %38, i32 %39, %struct.hinic_rss_context_table* %8, i32 32, %struct.hinic_rss_context_table* %8, i32* %12)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46, %43, %26
  %51 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %13, align 4
  %54 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %53, i64 %55, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %109

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IPV4, align 4
  %64 = call i8* @HINIC_RSS_TYPE_GET(i32 %62, i32 %63)
  %65 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %7, align 8
  %66 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %65, i32 0, i32 7
  store i8* %64, i8** %66, align 8
  %67 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IPV6, align 4
  %70 = call i8* @HINIC_RSS_TYPE_GET(i32 %68, i32 %69)
  %71 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %7, align 8
  %72 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IPV6_EXT, align 4
  %76 = call i8* @HINIC_RSS_TYPE_GET(i32 %74, i32 %75)
  %77 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %7, align 8
  %78 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @TCP_IPV4, align 4
  %82 = call i8* @HINIC_RSS_TYPE_GET(i32 %80, i32 %81)
  %83 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %7, align 8
  %84 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @TCP_IPV6, align 4
  %88 = call i8* @HINIC_RSS_TYPE_GET(i32 %86, i32 %87)
  %89 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %7, align 8
  %90 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @TCP_IPV6_EXT, align 4
  %94 = call i8* @HINIC_RSS_TYPE_GET(i32 %92, i32 %93)
  %95 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %7, align 8
  %96 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @UDP_IPV4, align 4
  %100 = call i8* @HINIC_RSS_TYPE_GET(i32 %98, i32 %99)
  %101 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %7, align 8
  %102 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = getelementptr inbounds %struct.hinic_rss_context_table, %struct.hinic_rss_context_table* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @UDP_IPV6, align 4
  %106 = call i8* @HINIC_RSS_TYPE_GET(i32 %104, i32 %105)
  %107 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %7, align 8
  %108 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %60, %50, %23
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #2

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_rss_context_table*, i32, %struct.hinic_rss_context_table*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32) #2

declare dso_local i8* @HINIC_RSS_TYPE_GET(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
