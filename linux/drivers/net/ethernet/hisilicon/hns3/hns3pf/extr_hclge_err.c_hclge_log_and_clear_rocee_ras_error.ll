; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_log_and_clear_rocee_ras_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_log_and_clear_rocee_ras_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hclge_desc = type { i32* }

@HNAE3_NONE_RESET = common dso_local global i32 0, align 4
@HCLGE_QUERY_CLEAR_ROCEE_RAS_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed(%d) to query ROCEE RAS INT SRC\0A\00", align 1
@HNAE3_GLOBAL_RESET = common dso_local global i32 0, align 4
@HCLGE_ROCEE_AXI_ERR_INT_MASK = common dso_local global i32 0, align 4
@HCLGE_ROCEE_RERR_INT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ROCEE RAS AXI rresp error\0A\00", align 1
@HCLGE_ROCEE_BERR_INT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"ROCEE RAS AXI bresp error\0A\00", align 1
@HNAE3_FUNC_RESET = common dso_local global i32 0, align 4
@HCLGE_ROCEE_ECC_INT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"ROCEE RAS 2bit ECC error\0A\00", align 1
@HCLGE_ROCEE_OVF_INT_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed(%d) to process ovf error\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"failed(%d) to clear ROCEE RAS error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_log_and_clear_rocee_ras_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_log_and_clear_rocee_ras_error(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca [2 x %struct.hclge_desc], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %9 = load i32, i32* @HNAE3_NONE_RESET, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %15 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %16 = load i32, i32* @HCLGE_QUERY_CLEAR_ROCEE_RAS_INT, align 4
  %17 = call i32 @hclge_cmd_query_error(%struct.hclge_dev* %14, %struct.hclge_desc* %15, i32 %16, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  store i32 %24, i32* %2, align 4
  br label %109

25:                                               ; preds = %1
  %26 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %27 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 16
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @HCLGE_ROCEE_AXI_ERR_INT_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @HCLGE_ROCEE_RERR_INT_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @HCLGE_ROCEE_BERR_INT_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* @HNAE3_FUNC_RESET, align 4
  store i32 %53, i32* %4, align 4
  %54 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %55 = call i32 @hclge_log_rocee_axi_error(%struct.hclge_dev* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  store i32 %59, i32* %2, align 4
  br label %109

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %25
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @HCLGE_ROCEE_ECC_INT_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  store i32 %69, i32* %4, align 4
  %70 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %71 = call i32 @hclge_log_rocee_ecc_error(%struct.hclge_dev* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  store i32 %75, i32* %2, align 4
  br label %109

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %61
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @HCLGE_ROCEE_OVF_INT_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %84 = call i32 @hclge_log_rocee_ovf_error(%struct.hclge_dev* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  store i32 %91, i32* %2, align 4
  br label %109

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %77
  %94 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %95 = call i32 @hclge_cmd_reuse_desc(%struct.hclge_desc* %94, i32 0)
  %96 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %97 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %99 = call i32 @hclge_cmd_send(i32* %97, %struct.hclge_desc* %98, i32 1)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  store i32 %106, i32* %2, align 4
  br label %109

107:                                              ; preds = %93
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %102, %87, %74, %58, %20
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @hclge_cmd_query_error(%struct.hclge_dev*, %struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hclge_log_rocee_axi_error(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_log_rocee_ecc_error(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_log_rocee_ovf_error(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_cmd_reuse_desc(%struct.hclge_desc*, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
