; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_handle_pf_msix_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_handle_pf_msix_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hclge_desc = type { i32* }

@HCLGE_QUERY_CLEAR_ALL_PF_MSIX_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"query all pf msix int cmd failed (%d)\0A\00", align 1
@HCLGE_SSU_PORT_INT_MSIX_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"SSU_PORT_BASED_ERR_INT\00", align 1
@hclge_ssu_port_based_pf_int = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"PPP_PF_ABNORMAL_INT_ST0\00", align 1
@hclge_ppp_pf_abnormal_int = common dso_local global i32* null, align 8
@HCLGE_PPU_PF_INT_MSIX_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"PPU_PF_ABNORMAL_INT_ST\00", align 1
@hclge_ppu_pf_abnormal_int = common dso_local global i32* null, align 8
@HCLGE_PPU_PF_OVER_8BD_ERR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"clear all pf msix int cmd failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_desc*, i32, i64*)* @hclge_handle_pf_msix_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_handle_pf_msix_error(%struct.hclge_dev* %0, %struct.hclge_desc* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca %struct.hclge_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %6, align 8
  store %struct.hclge_desc* %1, %struct.hclge_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %19 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %18, i64 0
  %20 = load i32, i32* @HCLGE_QUERY_CLEAR_ALL_PF_MSIX_INT, align 4
  %21 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %19, i32 %20, i32 1)
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 0
  %24 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %25 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %24, i64 0
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @hclge_cmd_send(i32* %23, %struct.hclge_desc* %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.device*, %struct.device** %10, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %5, align 4
  br label %113

35:                                               ; preds = %4
  %36 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %37 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %36, i64 0
  %38 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = load i32, i32* @HCLGE_SSU_PORT_INT_MSIX_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load %struct.device*, %struct.device** %10, align 8
  %49 = load i32*, i32** @hclge_ssu_port_based_pf_int, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %12, align 4
  %52 = load i64*, i64** %9, align 8
  %53 = call i32 @hclge_log_error(%struct.device* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %50, i32 %51, i64* %52)
  br label %54

54:                                               ; preds = %47, %35
  %55 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %56 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %55, i64 2
  %57 = bitcast %struct.hclge_desc* %56 to i32*
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.device*, %struct.device** %10, align 8
  %65 = load i32*, i32** @hclge_ppp_pf_abnormal_int, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %12, align 4
  %68 = load i64*, i64** %9, align 8
  %69 = call i32 @hclge_log_error(%struct.device* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %66, i32 %67, i64* %68)
  br label %70

70:                                               ; preds = %63, %54
  %71 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %72 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %71, i64 3
  %73 = bitcast %struct.hclge_desc* %72 to i32*
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32_to_cpu(i32 %75)
  %77 = load i32, i32* @HCLGE_PPU_PF_INT_MSIX_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %70
  %82 = load %struct.device*, %struct.device** %10, align 8
  %83 = load i32*, i32** @hclge_ppu_pf_abnormal_int, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %12, align 4
  %86 = load i64*, i64** %9, align 8
  %87 = call i32 @hclge_log_error(%struct.device* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %84, i32 %85, i64* %86)
  br label %88

88:                                               ; preds = %81, %70
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = load i32, i32* @HCLGE_PPU_PF_OVER_8BD_ERR_MASK, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %98 = load i64*, i64** %9, align 8
  %99 = call i32 @hclge_handle_over_8bd_err(%struct.hclge_dev* %97, i64* %98)
  br label %100

100:                                              ; preds = %96, %88
  %101 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %102 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @hclge_clear_hw_msix_error(%struct.hclge_dev* %101, %struct.hclge_desc* %102, i32 0, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.device*, %struct.device** %10, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %100
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %30
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hclge_log_error(%struct.device*, i8*, i32*, i32, i64*) #1

declare dso_local i32 @hclge_handle_over_8bd_err(%struct.hclge_dev*, i64*) #1

declare dso_local i32 @hclge_clear_hw_msix_error(%struct.hclge_dev*, %struct.hclge_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
