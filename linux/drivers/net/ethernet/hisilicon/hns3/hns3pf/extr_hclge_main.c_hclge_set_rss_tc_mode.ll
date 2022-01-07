; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_rss_tc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_rss_tc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_rss_tc_mode_cmd = type { i32* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_RSS_TC_MODE = common dso_local global i32 0, align 4
@HCLGE_MAX_TC_NUM = common dso_local global i32 0, align 4
@HCLGE_RSS_TC_VALID_B = common dso_local global i32 0, align 4
@HCLGE_RSS_TC_SIZE_M = common dso_local global i32 0, align 4
@HCLGE_RSS_TC_SIZE_S = common dso_local global i32 0, align 4
@HCLGE_RSS_TC_OFFSET_M = common dso_local global i32 0, align 4
@HCLGE_RSS_TC_OFFSET_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Configure rss tc mode fail, status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32*, i32*, i32*)* @hclge_set_rss_tc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_rss_tc_mode(%struct.hclge_dev* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hclge_rss_tc_mode_cmd*, align 8
  %10 = alloca %struct.hclge_desc, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* @HCLGE_OPC_RSS_TC_MODE, align 4
  %15 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %10, i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %10, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hclge_rss_tc_mode_cmd*
  store %struct.hclge_rss_tc_mode_cmd* %18, %struct.hclge_rss_tc_mode_cmd** %9, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %59, %4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @HCLGE_MAX_TC_NUM, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @HCLGE_RSS_TC_VALID_B, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1
  %32 = call i32 @hnae3_set_bit(i32 %24, i32 %25, i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @HCLGE_RSS_TC_SIZE_M, align 4
  %35 = load i32, i32* @HCLGE_RSS_TC_SIZE_S, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hnae3_set_field(i32 %33, i32 %34, i32 %35, i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @HCLGE_RSS_TC_OFFSET_M, align 4
  %44 = load i32, i32* @HCLGE_RSS_TC_OFFSET_S, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hnae3_set_field(i32 %42, i32 %43, i32 %44, i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @cpu_to_le16(i32 %51)
  %53 = load %struct.hclge_rss_tc_mode_cmd*, %struct.hclge_rss_tc_mode_cmd** %9, align 8
  %54 = getelementptr inbounds %struct.hclge_rss_tc_mode_cmd, %struct.hclge_rss_tc_mode_cmd* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %23
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %19

62:                                               ; preds = %19
  %63 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %64 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %63, i32 0, i32 1
  %65 = call i32 @hclge_cmd_send(i32* %64, %struct.hclge_desc* %10, i32 1)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %70 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %68, %62
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
