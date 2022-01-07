; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_rss_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_rss_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.hclgevf_rss_cfg }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.hclgevf_rss_cfg = type { i64, i64*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@HCLGEVF_RSS_HASH_ALGO_SIMPLE = common dso_local global i32 0, align 4
@hclgevf_hash_key = common dso_local global i32 0, align 4
@HCLGEVF_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@HCLGEVF_RSS_INPUT_TUPLE_OTHER = common dso_local global i8* null, align 8
@HCLGEVF_RSS_INPUT_TUPLE_SCTP = common dso_local global i8* null, align 8
@HCLGEVF_RSS_IND_TBL_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_rss_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_rss_init_hw(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.hclgevf_rss_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %7 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %7, i32 0, i32 2
  store %struct.hclgevf_rss_cfg* %8, %struct.hclgevf_rss_cfg** %4, align 8
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 33
  br i1 %21, label %22, label %85

22:                                               ; preds = %1
  %23 = load i32, i32* @HCLGEVF_RSS_HASH_ALGO_SIMPLE, align 4
  %24 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @hclgevf_hash_key, align 4
  %30 = load i32, i32* @HCLGEVF_RSS_KEY_SIZE, align 4
  %31 = call i32 @memcpy(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %33 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %34 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @hclgevf_set_rss_algo_key(%struct.hclgevf_dev* %32, i32 %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %22
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %117

44:                                               ; preds = %22
  %45 = load i8*, i8** @HCLGEVF_RSS_INPUT_TUPLE_OTHER, align 8
  %46 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %47 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  store i8* %45, i8** %48, align 8
  %49 = load i8*, i8** @HCLGEVF_RSS_INPUT_TUPLE_OTHER, align 8
  %50 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 6
  store i8* %49, i8** %52, align 8
  %53 = load i8*, i8** @HCLGEVF_RSS_INPUT_TUPLE_SCTP, align 8
  %54 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %55 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  store i8* %53, i8** %56, align 8
  %57 = load i8*, i8** @HCLGEVF_RSS_INPUT_TUPLE_OTHER, align 8
  %58 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %59 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** @HCLGEVF_RSS_INPUT_TUPLE_OTHER, align 8
  %62 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %63 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  store i8* %61, i8** %64, align 8
  %65 = load i8*, i8** @HCLGEVF_RSS_INPUT_TUPLE_OTHER, align 8
  %66 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %67 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i8* %65, i8** %68, align 8
  %69 = load i8*, i8** @HCLGEVF_RSS_INPUT_TUPLE_SCTP, align 8
  %70 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %71 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  %73 = load i8*, i8** @HCLGEVF_RSS_INPUT_TUPLE_OTHER, align 8
  %74 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %75 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  %77 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %78 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %79 = call i32 @hclgevf_set_rss_input_tuple(%struct.hclgevf_dev* %77, %struct.hclgevf_rss_cfg* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %44
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %117

84:                                               ; preds = %44
  br label %85

85:                                               ; preds = %84, %1
  store i64 0, i64* %6, align 8
  br label %86

86:                                               ; preds = %101, %85
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @HCLGEVF_RSS_IND_TBL_SIZE, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %93 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = urem i64 %91, %94
  %96 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %97 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %95, i64* %100, align 8
  br label %101

101:                                              ; preds = %90
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %6, align 8
  br label %86

104:                                              ; preds = %86
  %105 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %106 = call i32 @hclgevf_set_rss_indir_table(%struct.hclgevf_dev* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %117

111:                                              ; preds = %104
  %112 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %113 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %114 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @hclgevf_set_rss_tc_mode(%struct.hclgevf_dev* %112, i64 %115)
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %109, %82, %42
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hclgevf_set_rss_algo_key(%struct.hclgevf_dev*, i32, i32) #1

declare dso_local i32 @hclgevf_set_rss_input_tuple(%struct.hclgevf_dev*, %struct.hclgevf_rss_cfg*) #1

declare dso_local i32 @hclgevf_set_rss_indir_table(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_set_rss_tc_mode(%struct.hclgevf_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
