; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_config_common_hw_err_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_config_common_hw_err_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hclge_desc = type { i8**, i32 }

@HCLGE_COMMON_ECC_INT_CFG = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4
@HCLGE_IMP_TCM_ECC_ERR_INT_EN = common dso_local global i32 0, align 4
@HCLGE_CMDQ_NIC_ECC_ERR_INT_EN = common dso_local global i32 0, align 4
@HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN = common dso_local global i32 0, align 4
@HCLGE_IMP_RD_POISON_ERR_INT_EN = common dso_local global i32 0, align 4
@HCLGE_TQP_ECC_ERR_INT_EN = common dso_local global i32 0, align 4
@HCLGE_MSIX_SRAM_ECC_ERR_INT_EN = common dso_local global i32 0, align 4
@HCLGE_IMP_ITCM4_ECC_ERR_INT_EN = common dso_local global i32 0, align 4
@HCLGE_IMP_TCM_ECC_ERR_INT_EN_MASK = common dso_local global i32 0, align 4
@HCLGE_CMDQ_NIC_ECC_ERR_INT_EN_MASK = common dso_local global i32 0, align 4
@HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN_MASK = common dso_local global i32 0, align 4
@HCLGE_IMP_RD_POISON_ERR_INT_EN_MASK = common dso_local global i32 0, align 4
@HCLGE_TQP_ECC_ERR_INT_EN_MASK = common dso_local global i32 0, align 4
@HCLGE_MSIX_SRAM_ECC_ERR_INT_EN_MASK = common dso_local global i32 0, align 4
@HCLGE_IMP_ITCM4_ECC_ERR_INT_EN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"fail(%d) to configure common err interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_config_common_hw_err_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_config_common_hw_err_int(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca [2 x %struct.hclge_desc], align 16
  %7 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %13 = load i32, i32* @HCLGE_COMMON_ECC_INT_CFG, align 4
  %14 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %12, i32 %13, i32 0)
  %15 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %16 = call i32 @cpu_to_le16(i32 %15)
  %17 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %18 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 1
  %22 = load i32, i32* @HCLGE_COMMON_ECC_INT_CFG, align 4
  %23 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %21, i32 %22, i32 0)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %2
  %27 = load i32, i32* @HCLGE_IMP_TCM_ECC_ERR_INT_EN, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %30 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 16
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %28, i8** %32, align 8
  %33 = load i32, i32* @HCLGE_CMDQ_NIC_ECC_ERR_INT_EN, align 4
  %34 = load i32, i32* @HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN, align 4
  %35 = or i32 %33, %34
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %38 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 16
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  store i8* %36, i8** %40, align 8
  %41 = load i32, i32* @HCLGE_IMP_RD_POISON_ERR_INT_EN, align 4
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %44 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 16
  %46 = getelementptr inbounds i8*, i8** %45, i64 3
  store i8* %42, i8** %46, align 8
  %47 = load i32, i32* @HCLGE_TQP_ECC_ERR_INT_EN, align 4
  %48 = load i32, i32* @HCLGE_MSIX_SRAM_ECC_ERR_INT_EN, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %52 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 16
  %54 = getelementptr inbounds i8*, i8** %53, i64 4
  store i8* %50, i8** %54, align 8
  %55 = load i32, i32* @HCLGE_IMP_ITCM4_ECC_ERR_INT_EN, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %58 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 16
  %60 = getelementptr inbounds i8*, i8** %59, i64 5
  store i8* %56, i8** %60, align 8
  br label %61

61:                                               ; preds = %26, %2
  %62 = load i32, i32* @HCLGE_IMP_TCM_ECC_ERR_INT_EN_MASK, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 1
  %65 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 16
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  store i8* %63, i8** %67, align 8
  %68 = load i32, i32* @HCLGE_CMDQ_NIC_ECC_ERR_INT_EN_MASK, align 4
  %69 = load i32, i32* @HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN_MASK, align 4
  %70 = or i32 %68, %69
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 1
  %73 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 16
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  store i8* %71, i8** %75, align 8
  %76 = load i32, i32* @HCLGE_IMP_RD_POISON_ERR_INT_EN_MASK, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 1
  %79 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 16
  %81 = getelementptr inbounds i8*, i8** %80, i64 3
  store i8* %77, i8** %81, align 8
  %82 = load i32, i32* @HCLGE_TQP_ECC_ERR_INT_EN_MASK, align 4
  %83 = load i32, i32* @HCLGE_MSIX_SRAM_ECC_ERR_INT_EN_MASK, align 4
  %84 = or i32 %82, %83
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 1
  %87 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 16
  %89 = getelementptr inbounds i8*, i8** %88, i64 4
  store i8* %85, i8** %89, align 8
  %90 = load i32, i32* @HCLGE_IMP_ITCM4_ECC_ERR_INT_EN_MASK, align 4
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 1
  %93 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %92, i32 0, i32 0
  %94 = load i8**, i8*** %93, align 16
  %95 = getelementptr inbounds i8*, i8** %94, i64 5
  store i8* %91, i8** %95, align 8
  %96 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %97 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %6, i64 0, i64 0
  %99 = call i32 @hclge_cmd_send(i32* %97, %struct.hclge_desc* %98, i32 2)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %61
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %61
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
