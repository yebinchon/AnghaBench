; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_get_m7_stats_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_get_m7_stats_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_desc = type { i32* }
%struct.hclge_get_m7_bd_cmd = type { i32 }

@HCLGE_OPC_M7_STATS_BD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"get firmware statistics bd number failed, ret = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"allocate desc for get_m7_stats failed\0A\00", align 1
@HCLGE_OPC_M7_STATS_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"get firmware statistics failed, ret = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"0x%08x  0x%08x  0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_dbg_get_m7_stats_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_get_m7_stats_info(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_desc*, align 8
  %4 = alloca %struct.hclge_desc*, align 8
  %5 = alloca %struct.hclge_get_m7_bd_cmd*, align 8
  %6 = alloca %struct.hclge_desc, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %11 = load i32, i32* @HCLGE_OPC_M7_STATS_BD, align 4
  %12 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %11, i32 1)
  %13 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.hclge_get_m7_bd_cmd*
  store %struct.hclge_get_m7_bd_cmd* %15, %struct.hclge_get_m7_bd_cmd** %5, align 8
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 1
  %18 = call i32 @hclge_cmd_send(i32* %17, %struct.hclge_desc* %6, i32 1)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %126

28:                                               ; preds = %1
  %29 = load %struct.hclge_get_m7_bd_cmd*, %struct.hclge_get_m7_bd_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.hclge_get_m7_bd_cmd, %struct.hclge_get_m7_bd_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.hclge_desc* @kzalloc(i32 %37, i32 %38)
  store %struct.hclge_desc* %39, %struct.hclge_desc** %3, align 8
  %40 = load %struct.hclge_desc*, %struct.hclge_desc** %3, align 8
  %41 = icmp ne %struct.hclge_desc* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %28
  %43 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %44 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %126

48:                                               ; preds = %28
  %49 = load %struct.hclge_desc*, %struct.hclge_desc** %3, align 8
  store %struct.hclge_desc* %49, %struct.hclge_desc** %4, align 8
  %50 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %51 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @HCLGE_OPC_M7_STATS_INFO, align 4
  %54 = call i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %50, %struct.hclge_desc* %51, i32 0, i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load %struct.hclge_desc*, %struct.hclge_desc** %3, align 8
  %59 = call i32 @kfree(%struct.hclge_desc* %58)
  %60 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %61 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %126

66:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %120, %66
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %123

71:                                               ; preds = %67
  %72 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %73 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %77 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %83 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %89 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le32_to_cpu(i32 %92)
  %94 = call i32 @dev_info(i32* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %87, i32 %93)
  %95 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %96 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %100 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  %105 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %106 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le32_to_cpu(i32 %109)
  %111 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %112 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32_to_cpu(i32 %115)
  %117 = call i32 @dev_info(i32* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %110, i32 %116)
  %118 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %119 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %118, i32 1
  store %struct.hclge_desc* %119, %struct.hclge_desc** %4, align 8
  br label %120

120:                                              ; preds = %71
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %67

123:                                              ; preds = %67
  %124 = load %struct.hclge_desc*, %struct.hclge_desc** %3, align 8
  %125 = call i32 @kfree(%struct.hclge_desc* %124)
  br label %126

126:                                              ; preds = %123, %57, %42, %21
  ret void
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.hclge_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @hclge_dbg_cmd_send(%struct.hclge_dev*, %struct.hclge_desc*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.hclge_desc*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
