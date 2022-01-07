; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_config_ppp_error_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_config_ppp_error_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.hclge_desc = type { i8**, i32 }

@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4
@HCLGE_PPP_CMD0_INT_CMD = common dso_local global i32 0, align 4
@HCLGE_PPP_MPF_ECC_ERR_INT0_EN = common dso_local global i32 0, align 4
@HCLGE_PPP_MPF_ECC_ERR_INT1_EN = common dso_local global i32 0, align 4
@HCLGE_PPP_PF_ERR_INT_EN = common dso_local global i32 0, align 4
@HCLGE_PPP_MPF_ECC_ERR_INT0_EN_MASK = common dso_local global i32 0, align 4
@HCLGE_PPP_MPF_ECC_ERR_INT1_EN_MASK = common dso_local global i32 0, align 4
@HCLGE_PPP_PF_ERR_INT_EN_MASK = common dso_local global i32 0, align 4
@HCLGE_PPP_CMD1_INT_CMD = common dso_local global i32 0, align 4
@HCLGE_PPP_MPF_ECC_ERR_INT2_EN = common dso_local global i32 0, align 4
@HCLGE_PPP_MPF_ECC_ERR_INT3_EN = common dso_local global i32 0, align 4
@HCLGE_PPP_MPF_ECC_ERR_INT2_EN_MASK = common dso_local global i32 0, align 4
@HCLGE_PPP_MPF_ECC_ERR_INT3_EN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"fail(%d) to configure PPP error intr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32)* @hclge_config_ppp_error_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_config_ppp_error_interrupt(%struct.hclge_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca [2 x %struct.hclge_desc], align 16
  %9 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %11 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %14, i32 %15, i32 0)
  %17 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %18 = call i32 @cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 0
  %20 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %23, i32 %24, i32 0)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @HCLGE_PPP_CMD0_INT_CMD, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %78

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load i32, i32* @HCLGE_PPP_MPF_ECC_ERR_INT0_EN, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 0
  %36 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 16
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  store i8* %34, i8** %38, align 8
  %39 = load i32, i32* @HCLGE_PPP_MPF_ECC_ERR_INT1_EN, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 0
  %42 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 16
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  store i8* %40, i8** %44, align 8
  %45 = load i32, i32* @HCLGE_PPP_PF_ERR_INT_EN, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 0
  %48 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 16
  %50 = getelementptr inbounds i8*, i8** %49, i64 4
  store i8* %46, i8** %50, align 8
  br label %51

51:                                               ; preds = %32, %29
  %52 = load i32, i32* @HCLGE_PPP_MPF_ECC_ERR_INT0_EN_MASK, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 1
  %55 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 16
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %53, i8** %57, align 8
  %58 = load i32, i32* @HCLGE_PPP_MPF_ECC_ERR_INT1_EN_MASK, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 1
  %61 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 16
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  store i8* %59, i8** %63, align 8
  %64 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %65 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 33
  br i1 %69, label %70, label %77

70:                                               ; preds = %51
  %71 = load i32, i32* @HCLGE_PPP_PF_ERR_INT_EN_MASK, align 4
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 1
  %74 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 16
  %76 = getelementptr inbounds i8*, i8** %75, i64 2
  store i8* %72, i8** %76, align 8
  br label %77

77:                                               ; preds = %70, %51
  br label %112

78:                                               ; preds = %3
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @HCLGE_PPP_CMD1_INT_CMD, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i32, i32* @HCLGE_PPP_MPF_ECC_ERR_INT2_EN, align 4
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 0
  %89 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %88, i32 0, i32 0
  %90 = load i8**, i8*** %89, align 16
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  store i8* %87, i8** %91, align 8
  %92 = load i32, i32* @HCLGE_PPP_MPF_ECC_ERR_INT3_EN, align 4
  %93 = call i8* @cpu_to_le32(i32 %92)
  %94 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 0
  %95 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 16
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  store i8* %93, i8** %97, align 8
  br label %98

98:                                               ; preds = %85, %82
  %99 = load i32, i32* @HCLGE_PPP_MPF_ECC_ERR_INT2_EN_MASK, align 4
  %100 = call i8* @cpu_to_le32(i32 %99)
  %101 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 1
  %102 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 16
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  store i8* %100, i8** %104, align 8
  %105 = load i32, i32* @HCLGE_PPP_MPF_ECC_ERR_INT3_EN_MASK, align 4
  %106 = call i8* @cpu_to_le32(i32 %105)
  %107 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 1
  %108 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %107, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 16
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %98, %78
  br label %112

112:                                              ; preds = %111, %77
  %113 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %114 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %8, i64 0, i64 0
  %116 = call i32 @hclge_cmd_send(i32* %114, %struct.hclge_desc* %115, i32 2)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.device*, %struct.device** %7, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %112
  %124 = load i32, i32* %9, align 4
  ret i32 %124
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
