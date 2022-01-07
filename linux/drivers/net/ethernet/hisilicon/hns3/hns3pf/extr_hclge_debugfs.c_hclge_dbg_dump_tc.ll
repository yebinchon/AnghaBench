; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_ets_tc_weight_cmd = type { i32*, i32 }
%struct.hclge_desc = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"Only DCB-supported dev supports tc\0A\00", align 1
@HCLGE_OPC_ETS_TC_WEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"dump tc fail, ret = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dump tc\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"weight_offset: %u\0A\00", align 1
@HNAE3_MAX_TC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"no sp mode\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"sp mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_dbg_dump_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_dump_tc(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_ets_tc_weight_cmd*, align 8
  %4 = alloca %struct.hclge_desc, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %8 = call i32 @hnae3_dev_dcb_supported(%struct.hclge_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_info(i32* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %66

16:                                               ; preds = %1
  %17 = load i32, i32* @HCLGE_OPC_ETS_TC_WEIGHT, align 4
  %18 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %4, i32 %17, i32 1)
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 1
  %21 = call i32 @hclge_cmd_send(i32* %20, %struct.hclge_desc* %4, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %66

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.hclge_ets_tc_weight_cmd*
  store %struct.hclge_ets_tc_weight_cmd* %34, %struct.hclge_ets_tc_weight_cmd** %3, align 8
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_info(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %41 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.hclge_ets_tc_weight_cmd*, %struct.hclge_ets_tc_weight_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.hclge_ets_tc_weight_cmd, %struct.hclge_ets_tc_weight_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32*, i8*, ...) @dev_info(i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %63, %31
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @HNAE3_MAX_TC, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %54 = load %struct.hclge_ets_tc_weight_cmd*, %struct.hclge_ets_tc_weight_cmd** %3, align 8
  %55 = getelementptr inbounds %struct.hclge_ets_tc_weight_cmd, %struct.hclge_ets_tc_weight_cmd* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @hclge_title_idx_print(%struct.hclge_dev* %53, i32 %60, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %48

66:                                               ; preds = %10, %24, %48
  ret void
}

declare dso_local i32 @hnae3_dev_dcb_supported(%struct.hclge_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_title_idx_print(%struct.hclge_dev*, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
