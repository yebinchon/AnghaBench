; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_rss_indir_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_rss_indir_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_rss_indirection_table_cmd = type { i32*, i8*, i8* }
%struct.hclge_desc = type { i64 }

@HCLGE_RSS_CFG_TBL_NUM = common dso_local global i32 0, align 4
@HCLGE_OPC_RSS_INDIR_TABLE = common dso_local global i32 0, align 4
@HCLGE_RSS_CFG_TBL_SIZE = common dso_local global i32 0, align 4
@HCLGE_RSS_SET_BITMAP_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Configure rss indir table fail,status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32*)* @hclge_set_rss_indir_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_rss_indir_table(%struct.hclge_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hclge_rss_indirection_table_cmd*, align 8
  %7 = alloca %struct.hclge_desc, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hclge_rss_indirection_table_cmd*
  store %struct.hclge_rss_indirection_table_cmd* %13, %struct.hclge_rss_indirection_table_cmd** %6, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %69, %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @HCLGE_RSS_CFG_TBL_NUM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = load i32, i32* @HCLGE_OPC_RSS_INDIR_TABLE, align 4
  %20 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %19, i32 0)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @HCLGE_RSS_CFG_TBL_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.hclge_rss_indirection_table_cmd*, %struct.hclge_rss_indirection_table_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.hclge_rss_indirection_table_cmd, %struct.hclge_rss_indirection_table_cmd* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @HCLGE_RSS_SET_BITMAP_MSK, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.hclge_rss_indirection_table_cmd*, %struct.hclge_rss_indirection_table_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.hclge_rss_indirection_table_cmd, %struct.hclge_rss_indirection_table_cmd* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %51, %18
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @HCLGE_RSS_CFG_TBL_SIZE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @HCLGE_RSS_CFG_TBL_SIZE, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %36, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hclge_rss_indirection_table_cmd*, %struct.hclge_rss_indirection_table_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.hclge_rss_indirection_table_cmd, %struct.hclge_rss_indirection_table_cmd* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 1
  %57 = call i32 @hclge_cmd_send(i32* %56, %struct.hclge_desc* %7, i32 1)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %62 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %14

72:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
