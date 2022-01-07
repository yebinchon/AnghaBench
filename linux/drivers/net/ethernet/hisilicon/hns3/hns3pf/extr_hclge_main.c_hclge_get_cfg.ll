; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_cfg = type { i32 }
%struct.hclge_cfg_param_cmd = type { i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_PF_CFG_DESC_NUM = common dso_local global i32 0, align 4
@HCLGE_OPC_GET_CFG_PARAM = common dso_local global i32 0, align 4
@HCLGE_CFG_OFFSET_M = common dso_local global i32 0, align 4
@HCLGE_CFG_OFFSET_S = common dso_local global i32 0, align 4
@HCLGE_CFG_RD_LEN_BYTES = common dso_local global i32 0, align 4
@HCLGE_CFG_RD_LEN_M = common dso_local global i32 0, align 4
@HCLGE_CFG_RD_LEN_S = common dso_local global i32 0, align 4
@HCLGE_CFG_RD_LEN_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"get config failed %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_cfg*)* @hclge_get_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_cfg(%struct.hclge_dev* %0, %struct.hclge_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca %struct.hclge_cfg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hclge_cfg_param_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store %struct.hclge_cfg* %1, %struct.hclge_cfg** %5, align 8
  %13 = load i32, i32* @HCLGE_PF_CFG_DESC_NUM, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.hclge_desc, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %51, %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @HCLGE_PF_CFG_DESC_NUM, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %16, i64 %23
  %25 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.hclge_cfg_param_cmd*
  store %struct.hclge_cfg_param_cmd* %27, %struct.hclge_cfg_param_cmd** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %16, i64 %29
  %31 = load i32, i32* @HCLGE_OPC_GET_CFG_PARAM, align 4
  %32 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %30, i32 %31, i32 1)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @HCLGE_CFG_OFFSET_M, align 4
  %35 = load i32, i32* @HCLGE_CFG_OFFSET_S, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @HCLGE_CFG_RD_LEN_BYTES, align 4
  %38 = mul i32 %36, %37
  %39 = call i32 @hnae3_set_field(i32 %33, i32 %34, i32 %35, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @HCLGE_CFG_RD_LEN_M, align 4
  %42 = load i32, i32* @HCLGE_CFG_RD_LEN_S, align 4
  %43 = load i32, i32* @HCLGE_CFG_RD_LEN_BYTES, align 4
  %44 = load i32, i32* @HCLGE_CFG_RD_LEN_UNIT, align 4
  %45 = udiv i32 %43, %44
  %46 = call i32 @hnae3_set_field(i32 %40, i32 %41, i32 %42, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %8, align 8
  %50 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %21
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %17

54:                                               ; preds = %17
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 1
  %57 = load i32, i32* @HCLGE_PF_CFG_DESC_NUM, align 4
  %58 = call i32 @hclge_cmd_send(i32* %56, %struct.hclge_desc* %16, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %63 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %72

69:                                               ; preds = %54
  %70 = load %struct.hclge_cfg*, %struct.hclge_cfg** %5, align 8
  %71 = call i32 @hclge_parse_cfg(%struct.hclge_cfg* %70, %struct.hclge_desc* %16)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %72

72:                                               ; preds = %69, %61
  %73 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #2

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @hclge_parse_cfg(%struct.hclge_cfg*, %struct.hclge_desc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
