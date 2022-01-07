; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_rss_tc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_rss_tc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclgevf_rss_tc_mode_cmd = type { i32* }
%struct.hclgevf_desc = type { i64 }

@HCLGEVF_MAX_TC_NUM = common dso_local global i32 0, align 4
@HCLGEVF_OPC_RSS_TC_MODE = common dso_local global i32 0, align 4
@HCLGEVF_RSS_TC_VALID_B = common dso_local global i32 0, align 4
@HCLGEVF_RSS_TC_SIZE_M = common dso_local global i32 0, align 4
@HCLGEVF_RSS_TC_SIZE_S = common dso_local global i32 0, align 4
@HCLGEVF_RSS_TC_OFFSET_M = common dso_local global i32 0, align 4
@HCLGEVF_RSS_TC_OFFSET_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"VF failed(=%d) to set rss tc mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*, i32)* @hclgevf_set_rss_tc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_set_rss_tc_mode(%struct.hclgevf_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclgevf_rss_tc_mode_cmd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hclgevf_desc, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @HCLGEVF_MAX_TC_NUM, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @HCLGEVF_MAX_TC_NUM, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load i32, i32* @HCLGEVF_MAX_TC_NUM, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %10, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.hclgevf_rss_tc_mode_cmd*
  store %struct.hclgevf_rss_tc_mode_cmd* %26, %struct.hclgevf_rss_tc_mode_cmd** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @roundup_pow_of_two(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @ilog2(i32 %29)
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %59, %2
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @HCLGEVF_MAX_TC_NUM, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %13, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %20, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %23, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul i32 %53, %54
  %56 = load i32, i32* %13, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %17, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %35
  %60 = load i32, i32* %13, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %31

62:                                               ; preds = %31
  %63 = load i32, i32* @HCLGEVF_OPC_RSS_TC_MODE, align 4
  %64 = call i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc* %10, i32 %63, i32 0)
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %112, %62
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @HCLGEVF_MAX_TC_NUM, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %115

69:                                               ; preds = %65
  %70 = load %struct.hclgevf_rss_tc_mode_cmd*, %struct.hclgevf_rss_tc_mode_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.hclgevf_rss_tc_mode_cmd, %struct.hclgevf_rss_tc_mode_cmd* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HCLGEVF_RSS_TC_VALID_B, align 4
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %20, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1
  %83 = call i32 @hnae3_set_bit(i32 %76, i32 %77, i32 %82)
  %84 = load %struct.hclgevf_rss_tc_mode_cmd*, %struct.hclgevf_rss_tc_mode_cmd** %5, align 8
  %85 = getelementptr inbounds %struct.hclgevf_rss_tc_mode_cmd, %struct.hclgevf_rss_tc_mode_cmd* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @HCLGEVF_RSS_TC_SIZE_M, align 4
  %92 = load i32, i32* @HCLGEVF_RSS_TC_SIZE_S, align 4
  %93 = load i32, i32* %13, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %23, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @hnae3_set_field(i32 %90, i32 %91, i32 %92, i32 %96)
  %98 = load %struct.hclgevf_rss_tc_mode_cmd*, %struct.hclgevf_rss_tc_mode_cmd** %5, align 8
  %99 = getelementptr inbounds %struct.hclgevf_rss_tc_mode_cmd, %struct.hclgevf_rss_tc_mode_cmd* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @HCLGEVF_RSS_TC_OFFSET_M, align 4
  %106 = load i32, i32* @HCLGEVF_RSS_TC_OFFSET_S, align 4
  %107 = load i32, i32* %13, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %17, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @hnae3_set_field(i32 %104, i32 %105, i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %69
  %113 = load i32, i32* %13, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %65

115:                                              ; preds = %65
  %116 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %117 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %116, i32 0, i32 2
  %118 = call i32 @hclgevf_cmd_send(i32* %117, %struct.hclgevf_desc* %10, i32 1)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %123 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @dev_err(i32* %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %121, %115
  %129 = load i32, i32* %12, align 4
  %130 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %130)
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @roundup_pow_of_two(i32) #2

declare dso_local i32 @ilog2(i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc*, i32, i32) #2

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #2

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i32) #2

declare dso_local i32 @hclgevf_cmd_send(i32*, %struct.hclgevf_desc*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
