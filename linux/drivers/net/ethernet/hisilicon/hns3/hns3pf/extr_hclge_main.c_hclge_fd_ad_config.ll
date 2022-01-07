; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_ad_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_ad_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_fd_ad_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hclge_fd_ad_config_cmd = type { i32, i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_FD_AD_OP = common dso_local global i32 0, align 4
@HCLGE_FD_AD_WR_RULE_ID_B = common dso_local global i32 0, align 4
@HCLGE_FD_AD_RULE_ID_M = common dso_local global i32 0, align 4
@HCLGE_FD_AD_RULE_ID_S = common dso_local global i32 0, align 4
@HCLGE_FD_AD_DROP_B = common dso_local global i32 0, align 4
@HCLGE_FD_AD_DIRECT_QID_B = common dso_local global i32 0, align 4
@HCLGE_FD_AD_QID_M = common dso_local global i32 0, align 4
@HCLGE_FD_AD_QID_S = common dso_local global i32 0, align 4
@HCLGE_FD_AD_USE_COUNTER_B = common dso_local global i32 0, align 4
@HCLGE_FD_AD_COUNTER_NUM_M = common dso_local global i32 0, align 4
@HCLGE_FD_AD_COUNTER_NUM_S = common dso_local global i32 0, align 4
@HCLGE_FD_AD_NXT_STEP_B = common dso_local global i32 0, align 4
@HCLGE_FD_AD_NXT_KEY_M = common dso_local global i32 0, align 4
@HCLGE_FD_AD_NXT_KEY_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"fd ad config fail, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32, %struct.hclge_fd_ad_data*)* @hclge_fd_ad_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_fd_ad_config(%struct.hclge_dev* %0, i32 %1, i32 %2, %struct.hclge_fd_ad_data* %3) #0 {
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hclge_fd_ad_data*, align 8
  %9 = alloca %struct.hclge_fd_ad_config_cmd*, align 8
  %10 = alloca %struct.hclge_desc, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.hclge_fd_ad_data* %3, %struct.hclge_fd_ad_data** %8, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @HCLGE_OPC_FD_AD_OP, align 4
  %14 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %10, i32 %13, i32 0)
  %15 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %10, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.hclge_fd_ad_config_cmd*
  store %struct.hclge_fd_ad_config_cmd* %17, %struct.hclge_fd_ad_config_cmd** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @cpu_to_le32(i32 %18)
  %20 = load %struct.hclge_fd_ad_config_cmd*, %struct.hclge_fd_ad_config_cmd** %9, align 8
  %21 = getelementptr inbounds %struct.hclge_fd_ad_config_cmd, %struct.hclge_fd_ad_config_cmd* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hclge_fd_ad_config_cmd*, %struct.hclge_fd_ad_config_cmd** %9, align 8
  %24 = getelementptr inbounds %struct.hclge_fd_ad_config_cmd, %struct.hclge_fd_ad_config_cmd* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @HCLGE_FD_AD_WR_RULE_ID_B, align 4
  %27 = load %struct.hclge_fd_ad_data*, %struct.hclge_fd_ad_data** %8, align 8
  %28 = getelementptr inbounds %struct.hclge_fd_ad_data, %struct.hclge_fd_ad_data* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @hnae3_set_bit(i32 %25, i32 %26, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @HCLGE_FD_AD_RULE_ID_M, align 4
  %33 = load i32, i32* @HCLGE_FD_AD_RULE_ID_S, align 4
  %34 = load %struct.hclge_fd_ad_data*, %struct.hclge_fd_ad_data** %8, align 8
  %35 = getelementptr inbounds %struct.hclge_fd_ad_data, %struct.hclge_fd_ad_data* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hnae3_set_field(i32 %31, i32 %32, i32 %33, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 %38, 32
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @HCLGE_FD_AD_DROP_B, align 4
  %42 = load %struct.hclge_fd_ad_data*, %struct.hclge_fd_ad_data** %8, align 8
  %43 = getelementptr inbounds %struct.hclge_fd_ad_data, %struct.hclge_fd_ad_data* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @hnae3_set_bit(i32 %40, i32 %41, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @HCLGE_FD_AD_DIRECT_QID_B, align 4
  %48 = load %struct.hclge_fd_ad_data*, %struct.hclge_fd_ad_data** %8, align 8
  %49 = getelementptr inbounds %struct.hclge_fd_ad_data, %struct.hclge_fd_ad_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @hnae3_set_bit(i32 %46, i32 %47, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @HCLGE_FD_AD_QID_M, align 4
  %54 = load i32, i32* @HCLGE_FD_AD_QID_S, align 4
  %55 = load %struct.hclge_fd_ad_data*, %struct.hclge_fd_ad_data** %8, align 8
  %56 = getelementptr inbounds %struct.hclge_fd_ad_data, %struct.hclge_fd_ad_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hnae3_set_field(i32 %52, i32 %53, i32 %54, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @HCLGE_FD_AD_USE_COUNTER_B, align 4
  %61 = load %struct.hclge_fd_ad_data*, %struct.hclge_fd_ad_data** %8, align 8
  %62 = getelementptr inbounds %struct.hclge_fd_ad_data, %struct.hclge_fd_ad_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hnae3_set_bit(i32 %59, i32 %60, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @HCLGE_FD_AD_COUNTER_NUM_M, align 4
  %67 = load i32, i32* @HCLGE_FD_AD_COUNTER_NUM_S, align 4
  %68 = load %struct.hclge_fd_ad_data*, %struct.hclge_fd_ad_data** %8, align 8
  %69 = getelementptr inbounds %struct.hclge_fd_ad_data, %struct.hclge_fd_ad_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @hnae3_set_field(i32 %65, i32 %66, i32 %67, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @HCLGE_FD_AD_NXT_STEP_B, align 4
  %74 = load %struct.hclge_fd_ad_data*, %struct.hclge_fd_ad_data** %8, align 8
  %75 = getelementptr inbounds %struct.hclge_fd_ad_data, %struct.hclge_fd_ad_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @hnae3_set_bit(i32 %72, i32 %73, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @HCLGE_FD_AD_NXT_KEY_M, align 4
  %80 = load i32, i32* @HCLGE_FD_AD_NXT_KEY_S, align 4
  %81 = load %struct.hclge_fd_ad_data*, %struct.hclge_fd_ad_data** %8, align 8
  %82 = getelementptr inbounds %struct.hclge_fd_ad_data, %struct.hclge_fd_ad_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @hnae3_set_field(i32 %78, i32 %79, i32 %80, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @cpu_to_le64(i32 %85)
  %87 = load %struct.hclge_fd_ad_config_cmd*, %struct.hclge_fd_ad_config_cmd** %9, align 8
  %88 = getelementptr inbounds %struct.hclge_fd_ad_config_cmd, %struct.hclge_fd_ad_config_cmd* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %90 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %89, i32 0, i32 1
  %91 = call i32 @hclge_cmd_send(i32* %90, %struct.hclge_desc* %10, i32 1)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %4
  %95 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %96 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %94, %4
  %102 = load i32, i32* %12, align 4
  ret i32 %102
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
