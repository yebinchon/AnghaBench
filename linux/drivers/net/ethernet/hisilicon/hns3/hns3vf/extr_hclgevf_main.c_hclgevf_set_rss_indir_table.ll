; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_rss_indir_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_rss_indir_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.hclgevf_rss_indirection_table_cmd = type { i32, i32*, i32 }
%struct.hclgevf_desc = type { i64 }

@HCLGEVF_RSS_CFG_TBL_NUM = common dso_local global i32 0, align 4
@HCLGEVF_OPC_RSS_INDIR_TABLE = common dso_local global i32 0, align 4
@HCLGEVF_RSS_CFG_TBL_SIZE = common dso_local global i32 0, align 4
@HCLGEVF_RSS_SET_BITMAP_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"VF failed(=%d) to set RSS indirection table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_set_rss_indir_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_set_rss_indir_table(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hclgevf_rss_indirection_table_cmd*, align 8
  %6 = alloca %struct.hclgevf_desc, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.hclgevf_rss_indirection_table_cmd*
  store %struct.hclgevf_rss_indirection_table_cmd* %16, %struct.hclgevf_rss_indirection_table_cmd** %5, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %70, %1
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @HCLGEVF_RSS_CFG_TBL_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %17
  %22 = load i32, i32* @HCLGEVF_OPC_RSS_INDIR_TABLE, align 4
  %23 = call i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc* %6, i32 %22, i32 0)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @HCLGEVF_RSS_CFG_TBL_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load %struct.hclgevf_rss_indirection_table_cmd*, %struct.hclgevf_rss_indirection_table_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.hclgevf_rss_indirection_table_cmd, %struct.hclgevf_rss_indirection_table_cmd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @HCLGEVF_RSS_SET_BITMAP_MSK, align 4
  %30 = load %struct.hclgevf_rss_indirection_table_cmd*, %struct.hclgevf_rss_indirection_table_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.hclgevf_rss_indirection_table_cmd, %struct.hclgevf_rss_indirection_table_cmd* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %52, %21
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @HCLGEVF_RSS_CFG_TBL_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @HCLGEVF_RSS_CFG_TBL_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hclgevf_rss_indirection_table_cmd*, %struct.hclgevf_rss_indirection_table_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.hclgevf_rss_indirection_table_cmd, %struct.hclgevf_rss_indirection_table_cmd* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %57 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %56, i32 0, i32 1
  %58 = call i32 @hclgevf_cmd_send(i32* %57, %struct.hclgevf_desc* %6, i32 1)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %63 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %74

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %17

73:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %61
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc*, i32, i32) #1

declare dso_local i32 @hclgevf_cmd_send(i32*, %struct.hclgevf_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
