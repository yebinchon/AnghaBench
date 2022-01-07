; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_ncl_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_ncl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_desc = type { i32 }

@HCLGE_CMD_NCL_CONFIG_BD_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%x %x\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid offset or length.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Non-positive offset or length.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"offset |    data\0A\00", align 1
@HCLGE_OPC_QUERY_NCL_CONFIG = common dso_local global i32 0, align 4
@HCLGE_MAX_NCL_CONFIG_LENGTH = common dso_local global i32 0, align 4
@HCLGE_MAX_NCL_CONFIG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, i8*)* @hclge_dbg_dump_ncl_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_dump_ncl_config(%struct.hclge_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i32, i32* @HCLGE_CMD_NCL_CONFIG_BD_NUM, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca %struct.hclge_desc, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* @HCLGE_CMD_NCL_CONFIG_BD_NUM, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 4096
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 4096, %27
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %22, %2
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %82

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39, %36
  %43 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %44 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %82

48:                                               ; preds = %39
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %50 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @dev_info(i32* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %78, %48
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sge i32 %59, 116
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, 7602176
  store i32 %63, i32* %10, align 4
  br label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 %65, 16
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %64, %61
  %70 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @HCLGE_OPC_QUERY_NCL_CONFIG, align 4
  %74 = call i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %70, %struct.hclge_desc* %16, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 1, i32* %12, align 4
  br label %82

78:                                               ; preds = %69
  %79 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %80 = call i32 @hclge_ncl_config_data_print(%struct.hclge_dev* %79, %struct.hclge_desc* %16, i32* %8, i32* %9)
  br label %54

81:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %81, %77, %42, %30
  %83 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %12, align 4
  switch i32 %84, label %86 [
    i32 0, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %82, %82
  ret void

86:                                               ; preds = %82
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @dev_info(i32*, i8*) #2

declare dso_local i32 @hclge_dbg_cmd_send(%struct.hclge_dev*, %struct.hclge_desc*, i32, i32, i32) #2

declare dso_local i32 @hclge_ncl_config_data_print(%struct.hclge_dev*, %struct.hclge_desc*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
