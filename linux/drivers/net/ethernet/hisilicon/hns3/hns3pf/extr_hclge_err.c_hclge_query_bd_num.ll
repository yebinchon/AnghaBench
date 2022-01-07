; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_query_bd_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_query_bd_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hclge_desc = type { i32* }

@HCLGE_QUERY_RAS_INT_STS_BD_NUM = common dso_local global i32 0, align 4
@HCLGE_MPF_RAS_INT_MIN_BD_NUM = common dso_local global i32 0, align 4
@HCLGE_PF_RAS_INT_MIN_BD_NUM = common dso_local global i32 0, align 4
@HCLGE_QUERY_MSIX_INT_STS_BD_NUM = common dso_local global i32 0, align 4
@HCLGE_MPF_MSIX_INT_MIN_BD_NUM = common dso_local global i32 0, align 4
@HCLGE_PF_MSIX_INT_MIN_BD_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"fail(%d) to query msix int status bd num\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid bd num: mpf(%d), pf(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32*, i32*)* @hclge_query_bd_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_query_bd_num(%struct.hclge_dev* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hclge_desc, align 8
  %15 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @HCLGE_QUERY_RAS_INT_STS_BD_NUM, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @HCLGE_MPF_RAS_INT_MIN_BD_NUM, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @HCLGE_PF_RAS_INT_MIN_BD_NUM, align 4
  store i32 %25, i32* %12, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @HCLGE_QUERY_MSIX_INT_STS_BD_NUM, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @HCLGE_MPF_MSIX_INT_MIN_BD_NUM, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @HCLGE_PF_MSIX_INT_MIN_BD_NUM, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %14, i32 %31, i32 1)
  %33 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %34 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %33, i32 0, i32 0
  %35 = call i32 @hclge_cmd_send(i32* %34, %struct.hclge_desc* %14, i32 1)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.device*, %struct.device** %10, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %5, align 4
  br label %75

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %14, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %14, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %43
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %60, %43
  %66 = load %struct.device*, %struct.device** %10, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %75

74:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %65, %38
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
