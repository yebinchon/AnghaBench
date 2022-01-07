; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_config_tm_hw_err_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_config_tm_hw_err_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hclge_desc = type { i8** }

@HCLGE_TM_SCH_ECC_INT_EN = common dso_local global i32 0, align 4
@HCLGE_TM_SCH_ECC_ERR_INT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"fail(%d) to configure TM SCH errors\0A\00", align 1
@HCLGE_TM_QCN_MEM_INT_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"fail(%d) to read TM QCN CFG status\0A\00", align 1
@HCLGE_TM_QCN_MEM_ERR_INT_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"fail(%d) to configure TM QCN mem errors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_config_tm_hw_err_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_config_tm_hw_err_int(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.hclge_desc, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load i32, i32* @HCLGE_TM_SCH_ECC_INT_EN, align 4
  %14 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %13, i32 0)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @HCLGE_TM_SCH_ECC_ERR_INT_EN, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  store i8* %19, i8** %22, align 8
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %25 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %24, i32 0, i32 0
  %26 = call i32 @hclge_cmd_send(i32* %25, %struct.hclge_desc* %7, i32 1)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %23
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %36 = load i32, i32* @HCLGE_TM_QCN_MEM_INT_CFG, align 4
  %37 = call i32 @hclge_cmd_query_error(%struct.hclge_dev* %35, %struct.hclge_desc* %7, i32 %36, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %34
  %46 = call i32 @hclge_cmd_reuse_desc(%struct.hclge_desc* %7, i32 0)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* @HCLGE_TM_QCN_MEM_ERR_INT_EN, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* %51, i8** %54, align 8
  br label %55

55:                                               ; preds = %49, %45
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %57 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %56, i32 0, i32 0
  %58 = call i32 @hclge_cmd_send(i32* %57, %struct.hclge_desc* %7, i32 1)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %40, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hclge_cmd_query_error(%struct.hclge_dev*, %struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_reuse_desc(%struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
