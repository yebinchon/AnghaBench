; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_set_rss_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_set_rss_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif*, %struct.hinic_func_to_io }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_func_to_io = type { i32 }
%struct.hinic_rss_type = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hinic_rss_context_tbl = type { i32, i8*, i64, i64, i8* }
%struct.hinic_cmdq_buf = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to allocate cmd buf\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VALID = common dso_local global i32 0, align 4
@IPV4 = common dso_local global i32 0, align 4
@IPV6 = common dso_local global i32 0, align 4
@IPV6_EXT = common dso_local global i32 0, align 4
@TCP_IPV4 = common dso_local global i32 0, align 4
@TCP_IPV6 = common dso_local global i32 0, align 4
@TCP_IPV6_EXT = common dso_local global i32 0, align 4
@UDP_IPV4 = common dso_local global i32 0, align 4
@UDP_IPV6 = common dso_local global i32 0, align 4
@HINIC_MOD_L2NIC = common dso_local global i32 0, align 4
@HINIC_UCODE_CMD_SET_RSS_CONTEXT_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to set rss context table, err: %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_set_rss_type(%struct.hinic_dev* %0, i32 %1, %struct.hinic_rss_type* byval(%struct.hinic_rss_type) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hinic_rss_context_tbl*, align 8
  %8 = alloca %struct.hinic_func_to_io*, align 8
  %9 = alloca %struct.hinic_cmdq_buf, align 8
  %10 = alloca %struct.hinic_hwdev*, align 8
  %11 = alloca %struct.hinic_hwif*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %17 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %16, i32 0, i32 0
  %18 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %17, align 8
  store %struct.hinic_hwdev* %18, %struct.hinic_hwdev** %10, align 8
  %19 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %10, align 8
  %20 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %19, i32 0, i32 1
  store %struct.hinic_func_to_io* %20, %struct.hinic_func_to_io** %8, align 8
  %21 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %10, align 8
  %22 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %21, i32 0, i32 0
  %23 = load %struct.hinic_hwif*, %struct.hinic_hwif** %22, align 8
  store %struct.hinic_hwif* %23, %struct.hinic_hwif** %11, align 8
  %24 = load %struct.hinic_hwif*, %struct.hinic_hwif** %11, align 8
  %25 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %24, i32 0, i32 0
  %26 = load %struct.pci_dev*, %struct.pci_dev** %25, align 8
  store %struct.pci_dev* %26, %struct.pci_dev** %12, align 8
  %27 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %8, align 8
  %28 = getelementptr inbounds %struct.hinic_func_to_io, %struct.hinic_func_to_io* %27, i32 0, i32 0
  %29 = call i32 @hinic_alloc_cmdq_buf(i32* %28, %struct.hinic_cmdq_buf* %9)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %129

38:                                               ; preds = %3
  %39 = load i32, i32* @VALID, align 4
  %40 = call i32 @HINIC_RSS_TYPE_SET(i32 1, i32 %39)
  %41 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %2, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IPV4, align 4
  %44 = call i32 @HINIC_RSS_TYPE_SET(i32 %42, i32 %43)
  %45 = or i32 %40, %44
  %46 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %2, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IPV6, align 4
  %49 = call i32 @HINIC_RSS_TYPE_SET(i32 %47, i32 %48)
  %50 = or i32 %45, %49
  %51 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %2, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IPV6_EXT, align 4
  %54 = call i32 @HINIC_RSS_TYPE_SET(i32 %52, i32 %53)
  %55 = or i32 %50, %54
  %56 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %2, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TCP_IPV4, align 4
  %59 = call i32 @HINIC_RSS_TYPE_SET(i32 %57, i32 %58)
  %60 = or i32 %55, %59
  %61 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %2, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TCP_IPV6, align 4
  %64 = call i32 @HINIC_RSS_TYPE_SET(i32 %62, i32 %63)
  %65 = or i32 %60, %64
  %66 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %2, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TCP_IPV6_EXT, align 4
  %69 = call i32 @HINIC_RSS_TYPE_SET(i32 %67, i32 %68)
  %70 = or i32 %65, %69
  %71 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %2, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @UDP_IPV4, align 4
  %74 = call i32 @HINIC_RSS_TYPE_SET(i32 %72, i32 %73)
  %75 = or i32 %70, %74
  %76 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %2, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @UDP_IPV6, align 4
  %79 = call i32 @HINIC_RSS_TYPE_SET(i32 %77, i32 %78)
  %80 = or i32 %75, %79
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = getelementptr inbounds %struct.hinic_cmdq_buf, %struct.hinic_cmdq_buf* %9, i32 0, i32 0
  store i32 40, i32* %83, align 8
  %84 = getelementptr inbounds %struct.hinic_cmdq_buf, %struct.hinic_cmdq_buf* %9, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.hinic_rss_context_tbl*
  store %struct.hinic_rss_context_tbl* %86, %struct.hinic_rss_context_tbl** %7, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i8* @cpu_to_be32(i32 %87)
  %89 = load %struct.hinic_rss_context_tbl*, %struct.hinic_rss_context_tbl** %7, align 8
  %90 = getelementptr inbounds %struct.hinic_rss_context_tbl, %struct.hinic_rss_context_tbl* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.hinic_rss_context_tbl*, %struct.hinic_rss_context_tbl** %7, align 8
  %92 = getelementptr inbounds %struct.hinic_rss_context_tbl, %struct.hinic_rss_context_tbl* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load %struct.hinic_rss_context_tbl*, %struct.hinic_rss_context_tbl** %7, align 8
  %94 = getelementptr inbounds %struct.hinic_rss_context_tbl, %struct.hinic_rss_context_tbl* %93, i32 0, i32 0
  store i32 4, i32* %94, align 8
  %95 = load %struct.hinic_rss_context_tbl*, %struct.hinic_rss_context_tbl** %7, align 8
  %96 = getelementptr inbounds %struct.hinic_rss_context_tbl, %struct.hinic_rss_context_tbl* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @cpu_to_be32(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.hinic_rss_context_tbl*, %struct.hinic_rss_context_tbl** %7, align 8
  %101 = getelementptr inbounds %struct.hinic_rss_context_tbl, %struct.hinic_rss_context_tbl* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.hinic_rss_context_tbl*, %struct.hinic_rss_context_tbl** %7, align 8
  %103 = getelementptr inbounds %struct.hinic_rss_context_tbl, %struct.hinic_rss_context_tbl* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i8* @cpu_to_be32(i32 %104)
  %106 = load %struct.hinic_rss_context_tbl*, %struct.hinic_rss_context_tbl** %7, align 8
  %107 = getelementptr inbounds %struct.hinic_rss_context_tbl, %struct.hinic_rss_context_tbl* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %8, align 8
  %109 = getelementptr inbounds %struct.hinic_func_to_io, %struct.hinic_func_to_io* %108, i32 0, i32 0
  %110 = load i32, i32* @HINIC_MOD_L2NIC, align 4
  %111 = load i32, i32* @HINIC_UCODE_CMD_SET_RSS_CONTEXT_TABLE, align 4
  %112 = call i32 @hinic_cmdq_direct_resp(i32* %109, i32 %110, i32 %111, %struct.hinic_cmdq_buf* %9, i64* %13)
  store i32 %112, i32* %15, align 4
  %113 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %8, align 8
  %114 = getelementptr inbounds %struct.hinic_func_to_io, %struct.hinic_func_to_io* %113, i32 0, i32 0
  %115 = call i32 @hinic_free_cmdq_buf(i32* %114, %struct.hinic_cmdq_buf* %9)
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %38
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118, %38
  %122 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %15, align 4
  %125 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EFAULT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %129

128:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %121, %32
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @hinic_alloc_cmdq_buf(i32*, %struct.hinic_cmdq_buf*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @HINIC_RSS_TYPE_SET(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @hinic_cmdq_direct_resp(i32*, i32, i32, %struct.hinic_cmdq_buf*, i64*) #1

declare dso_local i32 @hinic_free_cmdq_buf(i32*, %struct.hinic_cmdq_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
