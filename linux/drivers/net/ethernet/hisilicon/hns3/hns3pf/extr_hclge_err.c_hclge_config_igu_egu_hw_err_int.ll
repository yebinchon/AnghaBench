; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_config_igu_egu_hw_err_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_config_igu_egu_hw_err_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hclge_desc = type { i8** }

@HCLGE_IGU_COMMON_INT_EN = common dso_local global i32 0, align 4
@HCLGE_IGU_ERR_INT_EN = common dso_local global i32 0, align 4
@HCLGE_IGU_ERR_INT_EN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"fail(%d) to configure IGU common interrupts\0A\00", align 1
@HCLGE_IGU_EGU_TNL_INT_EN = common dso_local global i32 0, align 4
@HCLGE_IGU_TNL_ERR_INT_EN = common dso_local global i32 0, align 4
@HCLGE_IGU_TNL_ERR_INT_EN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"fail(%d) to configure IGU-EGU TNL interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_config_igu_egu_hw_err_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_config_igu_egu_hw_err_int(%struct.hclge_dev* %0, i32 %1) #0 {
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
  %13 = load i32, i32* @HCLGE_IGU_COMMON_INT_EN, align 4
  %14 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %13, i32 0)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @HCLGE_IGU_ERR_INT_EN, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  store i8* %19, i8** %22, align 8
  br label %23

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @HCLGE_IGU_ERR_INT_EN_MASK, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* %25, i8** %28, align 8
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %30 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %29, i32 0, i32 0
  %31 = call i32 @hclge_cmd_send(i32* %30, %struct.hclge_desc* %7, i32 1)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %71

39:                                               ; preds = %23
  %40 = load i32, i32* @HCLGE_IGU_EGU_TNL_INT_EN, align 4
  %41 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %40, i32 0)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @HCLGE_IGU_TNL_ERR_INT_EN, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* %46, i8** %49, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* @HCLGE_IGU_TNL_ERR_INT_EN_MASK, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8* %52, i8** %55, align 8
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %57 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %56, i32 0, i32 0
  %58 = call i32 @hclge_cmd_send(i32* %57, %struct.hclge_desc* %7, i32 1)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %71

66:                                               ; preds = %50
  %67 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @hclge_config_ncsi_hw_err_int(%struct.hclge_dev* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %61, %34
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hclge_config_ncsi_hw_err_int(%struct.hclge_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
