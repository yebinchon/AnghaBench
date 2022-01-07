; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_rss_set_indir_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_rss_set_indir_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif*, %struct.hinic_func_to_io }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_func_to_io = type { i32 }
%struct.hinic_rss_indirect_tbl = type { i64*, i8*, i8*, i8* }
%struct.hinic_cmdq_buf = type { i32, %struct.hinic_rss_indirect_tbl* }

@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate cmdq buf\0A\00", align 1
@HINIC_RSS_INDIR_SIZE = common dso_local global i32 0, align 4
@HINIC_MOD_L2NIC = common dso_local global i32 0, align 4
@HINIC_UCODE_CMD_SET_RSS_INDIR_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to set rss indir table\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_rss_set_indir_tbl(%struct.hinic_dev* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.hinic_rss_indirect_tbl*, align 8
  %9 = alloca %struct.hinic_func_to_io*, align 8
  %10 = alloca %struct.hinic_cmdq_buf, align 8
  %11 = alloca %struct.hinic_hwdev*, align 8
  %12 = alloca %struct.hinic_hwif*, align 8
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  store %struct.hinic_dev* %0, %struct.hinic_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %19 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %20 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %19, i32 0, i32 0
  %21 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %20, align 8
  store %struct.hinic_hwdev* %21, %struct.hinic_hwdev** %11, align 8
  %22 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %11, align 8
  %23 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %22, i32 0, i32 1
  store %struct.hinic_func_to_io* %23, %struct.hinic_func_to_io** %9, align 8
  %24 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %11, align 8
  %25 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %24, i32 0, i32 0
  %26 = load %struct.hinic_hwif*, %struct.hinic_hwif** %25, align 8
  store %struct.hinic_hwif* %26, %struct.hinic_hwif** %12, align 8
  %27 = load %struct.hinic_hwif*, %struct.hinic_hwif** %12, align 8
  %28 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %13, align 8
  %30 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %9, align 8
  %31 = getelementptr inbounds %struct.hinic_func_to_io, %struct.hinic_func_to_io* %30, i32 0, i32 0
  %32 = call i32 @hinic_alloc_cmdq_buf(i32* %31, %struct.hinic_cmdq_buf* %10)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %4, align 4
  br label %152

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.hinic_cmdq_buf, %struct.hinic_cmdq_buf* %10, i32 0, i32 0
  store i32 32, i32* %41, align 8
  %42 = getelementptr inbounds %struct.hinic_cmdq_buf, %struct.hinic_cmdq_buf* %10, i32 0, i32 1
  %43 = load %struct.hinic_rss_indirect_tbl*, %struct.hinic_rss_indirect_tbl** %42, align 8
  store %struct.hinic_rss_indirect_tbl* %43, %struct.hinic_rss_indirect_tbl** %8, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i8* @cpu_to_be32(i64 %44)
  %46 = load %struct.hinic_rss_indirect_tbl*, %struct.hinic_rss_indirect_tbl** %8, align 8
  %47 = getelementptr inbounds %struct.hinic_rss_indirect_tbl, %struct.hinic_rss_indirect_tbl* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %81, %40
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @HINIC_RSS_INDIR_SIZE, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %48
  %53 = load i64*, i64** %7, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.hinic_rss_indirect_tbl*, %struct.hinic_rss_indirect_tbl** %8, align 8
  %59 = getelementptr inbounds %struct.hinic_rss_indirect_tbl, %struct.hinic_rss_indirect_tbl* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %57, i64* %63, align 8
  %64 = load i32, i32* %17, align 4
  %65 = and i32 %64, 3
  %66 = icmp eq i32 3, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %52
  %68 = load %struct.hinic_rss_indirect_tbl*, %struct.hinic_rss_indirect_tbl** %8, align 8
  %69 = getelementptr inbounds %struct.hinic_rss_indirect_tbl, %struct.hinic_rss_indirect_tbl* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sub nsw i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  store i64* %74, i64** %18, align 8
  %75 = load i64*, i64** %18, align 8
  %76 = load i64, i64* %75, align 8
  %77 = call i8* @cpu_to_be32(i64 %76)
  %78 = ptrtoint i8* %77 to i64
  %79 = load i64*, i64** %18, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %67, %52
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  br label %48

84:                                               ; preds = %48
  %85 = load i32, i32* @HINIC_RSS_INDIR_SIZE, align 4
  %86 = sdiv i32 %85, 2
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %14, align 8
  %88 = load %struct.hinic_rss_indirect_tbl*, %struct.hinic_rss_indirect_tbl** %8, align 8
  %89 = getelementptr inbounds %struct.hinic_rss_indirect_tbl, %struct.hinic_rss_indirect_tbl* %88, i32 0, i32 2
  store i8* null, i8** %89, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i8* @cpu_to_be32(i64 %90)
  %92 = load %struct.hinic_rss_indirect_tbl*, %struct.hinic_rss_indirect_tbl** %8, align 8
  %93 = getelementptr inbounds %struct.hinic_rss_indirect_tbl, %struct.hinic_rss_indirect_tbl* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %9, align 8
  %95 = getelementptr inbounds %struct.hinic_func_to_io, %struct.hinic_func_to_io* %94, i32 0, i32 0
  %96 = load i32, i32* @HINIC_MOD_L2NIC, align 4
  %97 = load i32, i32* @HINIC_UCODE_CMD_SET_RSS_INDIR_TABLE, align 4
  %98 = call i32 @hinic_cmdq_direct_resp(i32* %95, i32 %96, i32 %97, %struct.hinic_cmdq_buf* %10, i64* %15)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %84
  %102 = load i64, i64* %15, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101, %84
  %105 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* @EFAULT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %16, align 4
  br label %147

110:                                              ; preds = %101
  %111 = load i64, i64* %14, align 8
  %112 = call i8* @cpu_to_be32(i64 %111)
  %113 = load %struct.hinic_rss_indirect_tbl*, %struct.hinic_rss_indirect_tbl** %8, align 8
  %114 = getelementptr inbounds %struct.hinic_rss_indirect_tbl, %struct.hinic_rss_indirect_tbl* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load i64, i64* %14, align 8
  %116 = call i8* @cpu_to_be32(i64 %115)
  %117 = load %struct.hinic_rss_indirect_tbl*, %struct.hinic_rss_indirect_tbl** %8, align 8
  %118 = getelementptr inbounds %struct.hinic_rss_indirect_tbl, %struct.hinic_rss_indirect_tbl* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.hinic_rss_indirect_tbl*, %struct.hinic_rss_indirect_tbl** %8, align 8
  %120 = getelementptr inbounds %struct.hinic_rss_indirect_tbl, %struct.hinic_rss_indirect_tbl* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load %struct.hinic_rss_indirect_tbl*, %struct.hinic_rss_indirect_tbl** %8, align 8
  %124 = getelementptr inbounds %struct.hinic_rss_indirect_tbl, %struct.hinic_rss_indirect_tbl* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %14, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %14, align 8
  %129 = call i32 @memcpy(i64* %122, i64* %127, i64 %128)
  %130 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %9, align 8
  %131 = getelementptr inbounds %struct.hinic_func_to_io, %struct.hinic_func_to_io* %130, i32 0, i32 0
  %132 = load i32, i32* @HINIC_MOD_L2NIC, align 4
  %133 = load i32, i32* @HINIC_UCODE_CMD_SET_RSS_INDIR_TABLE, align 4
  %134 = call i32 @hinic_cmdq_direct_resp(i32* %131, i32 %132, i32 %133, %struct.hinic_cmdq_buf* %10, i64* %15)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %110
  %138 = load i64, i64* %15, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137, %110
  %141 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 0
  %143 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* @EFAULT, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %140, %137
  br label %147

147:                                              ; preds = %146, %104
  %148 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %9, align 8
  %149 = getelementptr inbounds %struct.hinic_func_to_io, %struct.hinic_func_to_io* %148, i32 0, i32 0
  %150 = call i32 @hinic_free_cmdq_buf(i32* %149, %struct.hinic_cmdq_buf* %10)
  %151 = load i32, i32* %16, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %147, %35
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @hinic_alloc_cmdq_buf(i32*, %struct.hinic_cmdq_buf*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @hinic_cmdq_direct_resp(i32*, i32, i32, %struct.hinic_cmdq_buf*, i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @hinic_free_cmdq_buf(i32*, %struct.hinic_cmdq_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
