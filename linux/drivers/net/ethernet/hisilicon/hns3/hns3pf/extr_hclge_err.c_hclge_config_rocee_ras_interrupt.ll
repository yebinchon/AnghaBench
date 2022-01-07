; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_config_rocee_ras_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_config_rocee_ras_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.hclge_desc = type { i8** }

@HCLGE_CONFIG_ROCEE_RAS_INT_EN = common dso_local global i32 0, align 4
@HCLGE_ROCEE_RAS_NFE_INT_EN = common dso_local global i32 0, align 4
@HCLGE_ROCEE_RAS_CE_INT_EN = common dso_local global i32 0, align 4
@HCLGE_ROCEE_RAS_NFE_INT_EN_MASK = common dso_local global i32 0, align 4
@HCLGE_ROCEE_RAS_CE_INT_EN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed(%d) to config ROCEE RAS interrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_config_rocee_ras_interrupt(%struct.hclge_dev* %0, i32 %1) #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 33
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %21 = call i32 @hnae3_dev_roce_supported(%struct.hclge_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %64

24:                                               ; preds = %19
  %25 = load i32, i32* @HCLGE_CONFIG_ROCEE_RAS_INT_EN, align 4
  %26 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %25, i32 0)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32, i32* @HCLGE_ROCEE_RAS_NFE_INT_EN, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* @HCLGE_ROCEE_RAS_CE_INT_EN, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %41 = call i32 @hclge_log_and_clear_rocee_ras_error(%struct.hclge_dev* %40)
  br label %42

42:                                               ; preds = %29, %24
  %43 = load i32, i32* @HCLGE_ROCEE_RAS_NFE_INT_EN_MASK, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @HCLGE_ROCEE_RAS_CE_INT_EN_MASK, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 3
  store i8* %49, i8** %52, align 8
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %54 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %53, i32 0, i32 0
  %55 = call i32 @hclge_cmd_send(i32* %54, %struct.hclge_desc* %7, i32 1)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %42
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %42
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %23
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @hnae3_dev_roce_supported(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_log_and_clear_rocee_ras_error(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
