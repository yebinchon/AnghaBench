; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_log_rocee_ovf_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_log_rocee_ovf_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_hw_error = type { i32, i32 }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hclge_desc = type { i32* }

@HCLGE_ROCEE_PF_RAS_INT_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed(%d) to query ROCEE OVF error sts\0A\00", align 1
@HCLGE_ROCEE_OVF_ERR_INT_MASK = common dso_local global i32 0, align 4
@hclge_rocee_qmm_ovf_err_int = common dso_local global %struct.hclge_hw_error* null, align 8
@HCLGE_ROCEE_OVF_ERR_TYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s [error status=0x%x] found\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ROCEE TSP OVF [error status=0x%x] found\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ROCEE SCC OVF [error status=0x%x] found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_log_rocee_ovf_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_log_rocee_ovf_error(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca [2 x %struct.hclge_desc], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclge_hw_error*, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %14 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %5, i64 0, i64 0
  %15 = load i32, i32* @HCLGE_ROCEE_PF_RAS_INT_CMD, align 4
  %16 = call i32 @hclge_cmd_query_error(%struct.hclge_dev* %13, %struct.hclge_desc* %14, i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %111

24:                                               ; preds = %1
  %25 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %5, i64 0, i64 0
  %26 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 16
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load i32, i32* @HCLGE_ROCEE_OVF_ERR_INT_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %24
  %35 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** @hclge_rocee_qmm_ovf_err_int, align 8
  %36 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %35, i64 0
  store %struct.hclge_hw_error* %36, %struct.hclge_hw_error** %7, align 8
  %37 = load i32, i32* @HCLGE_ROCEE_OVF_ERR_TYPE_MASK, align 4
  %38 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %5, i64 0, i64 0
  %39 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 16
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = and i32 %37, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %68, %34
  %46 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** %7, align 8
  %47 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** %7, align 8
  %52 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** %7, align 8
  %59 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %5, i64 0, i64 0
  %62 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 16
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %66)
  br label %71

68:                                               ; preds = %50
  %69 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** %7, align 8
  %70 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %69, i32 1
  store %struct.hclge_hw_error* %70, %struct.hclge_hw_error** %7, align 8
  br label %45

71:                                               ; preds = %56, %45
  br label %72

72:                                               ; preds = %71, %24
  %73 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %5, i64 0, i64 0
  %74 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 16
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load i32, i32* @HCLGE_ROCEE_OVF_ERR_INT_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %5, i64 0, i64 0
  %85 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 16
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  %90 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %82, %72
  %92 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %5, i64 0, i64 0
  %93 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 16
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = load i32, i32* @HCLGE_ROCEE_OVF_ERR_INT_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %91
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %5, i64 0, i64 0
  %104 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 16
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le32_to_cpu(i32 %107)
  %109 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %101, %91
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %19
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @hclge_cmd_query_error(%struct.hclge_dev*, %struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
