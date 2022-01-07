; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_handle_pf_ras_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_handle_pf_ras_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__*, %struct.hnae3_ae_dev* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hnae3_ae_dev = type { i32 }
%struct.hclge_desc = type { i32* }

@HCLGE_QUERY_CLEAR_PF_RAS_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"query all pf ras int cmd failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SSU_PORT_BASED_ERR_INT\00", align 1
@hclge_ssu_port_based_err_int = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"SSU_FIFO_OVERFLOW_INT\00", align 1
@hclge_ssu_fifo_overflow_int = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"SSU_ETS_TCG_INT\00", align 1
@hclge_ssu_ets_tcg_int = common dso_local global i32* null, align 8
@HCLGE_IGU_EGU_TNL_INT_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"IGU_EGU_TNL_INT_STS\00", align 1
@hclge_igu_egu_tnl_int = common dso_local global i32* null, align 8
@HCLGE_PPU_PF_INT_RAS_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"PPU_PF_ABNORMAL_INT_ST0\00", align 1
@hclge_ppu_pf_abnormal_int = common dso_local global i32* null, align 8
@HNAE3_PPU_POISON_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"clear all pf ras int cmd failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_desc*, i32)* @hclge_handle_pf_ras_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_handle_pf_ras_error(%struct.hclge_dev* %0, %struct.hclge_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca %struct.hclge_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hnae3_ae_dev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store %struct.hclge_desc* %1, %struct.hclge_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 2
  %15 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %14, align 8
  store %struct.hnae3_ae_dev* %15, %struct.hnae3_ae_dev** %8, align 8
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %9, align 8
  %20 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %21 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %20, i64 0
  %22 = load i32, i32* @HCLGE_QUERY_CLEAR_PF_RAS_INT, align 4
  %23 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %21, i32 %22, i32 1)
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %25 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %24, i32 0, i32 0
  %26 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %27 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %26, i64 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @hclge_cmd_send(i32* %25, %struct.hclge_desc* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %150

37:                                               ; preds = %3
  %38 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %39 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %38, i64 0
  %40 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %9, align 8
  %49 = load i32*, i32** @hclge_ssu_port_based_err_int, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %53 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %52, i32 0, i32 0
  %54 = call i32 @hclge_log_error(%struct.device* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %50, i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %47, %37
  %56 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %57 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %56, i64 0
  %58 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.device*, %struct.device** %9, align 8
  %67 = load i32*, i32** @hclge_ssu_fifo_overflow_int, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %71 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %70, i32 0, i32 0
  %72 = call i32 @hclge_log_error(%struct.device* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %68, i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %65, %55
  %74 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %75 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %74, i64 0
  %76 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load %struct.device*, %struct.device** %9, align 8
  %85 = load i32*, i32** @hclge_ssu_ets_tcg_int, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %89 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %88, i32 0, i32 0
  %90 = call i32 @hclge_log_error(%struct.device* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %86, i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %83, %73
  %92 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %93 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %92, i64 1
  %94 = bitcast %struct.hclge_desc* %93 to i32*
  store i32* %94, i32** %10, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = load i32, i32* @HCLGE_IGU_EGU_TNL_INT_MASK, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %91
  %103 = load %struct.device*, %struct.device** %9, align 8
  %104 = load i32*, i32** @hclge_igu_egu_tnl_int, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %108 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %107, i32 0, i32 0
  %109 = call i32 @hclge_log_error(%struct.device* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %105, i32 %106, i32* %108)
  br label %110

110:                                              ; preds = %102, %91
  %111 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %112 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %111, i64 3
  %113 = bitcast %struct.hclge_desc* %112 to i32*
  store i32* %113, i32** %10, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32_to_cpu(i32 %115)
  %117 = load i32, i32* @HCLGE_PPU_PF_INT_RAS_MASK, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %110
  %122 = load %struct.device*, %struct.device** %9, align 8
  %123 = load i32*, i32** @hclge_ppu_pf_abnormal_int, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %127 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %126, i32 0, i32 0
  %128 = call i32 @hclge_log_error(%struct.device* %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %124, i32 %125, i32* %127)
  %129 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %130 = load i32, i32* @HNAE3_PPU_POISON_ERROR, align 4
  %131 = call i32 @hclge_report_hw_error(%struct.hclge_dev* %129, i32 %130)
  br label %132

132:                                              ; preds = %121, %110
  %133 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %134 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %133, i64 0
  %135 = call i32 @hclge_cmd_reuse_desc(%struct.hclge_desc* %134, i32 0)
  %136 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %137 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %136, i32 0, i32 0
  %138 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %139 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %138, i64 0
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @hclge_cmd_send(i32* %137, %struct.hclge_desc* %139, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = load %struct.device*, %struct.device** %9, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @dev_err(%struct.device* %145, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %132
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %32
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hclge_log_error(%struct.device*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @hclge_report_hw_error(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_cmd_reuse_desc(%struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
