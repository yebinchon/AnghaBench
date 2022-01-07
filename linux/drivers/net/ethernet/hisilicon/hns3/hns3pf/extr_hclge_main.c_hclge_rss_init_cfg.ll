; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_rss_init_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_rss_init_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_3__*, %struct.hclge_vport* }
%struct.TYPE_3__ = type { i32 }
%struct.hclge_vport = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@HCLGE_RSS_HASH_ALGO_TOEPLITZ = common dso_local global i32 0, align 4
@HCLGE_RSS_HASH_ALGO_SIMPLE = common dso_local global i32 0, align 4
@HCLGE_RSS_INPUT_TUPLE_OTHER = common dso_local global i8* null, align 8
@HCLGE_RSS_INPUT_TUPLE_SCTP = common dso_local global i8* null, align 8
@hclge_hash_key = common dso_local global i32 0, align 4
@HCLGE_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_rss_init_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_rss_init_cfg(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_vport*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %6 = load i32, i32* @HCLGE_RSS_HASH_ALGO_TOEPLITZ, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %8 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %7, i32 0, i32 2
  %9 = load %struct.hclge_vport*, %struct.hclge_vport** %8, align 8
  store %struct.hclge_vport* %9, %struct.hclge_vport** %5, align 8
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 33
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @HCLGE_RSS_HASH_ALGO_SIMPLE, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %98, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %101

26:                                               ; preds = %19
  %27 = load i8*, i8** @HCLGE_RSS_INPUT_TUPLE_OTHER, align 8
  %28 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %28, i64 %30
  %32 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 7
  store i8* %27, i8** %33, align 8
  %34 = load i8*, i8** @HCLGE_RSS_INPUT_TUPLE_OTHER, align 8
  %35 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %35, i64 %37
  %39 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  store i8* %34, i8** %40, align 8
  %41 = load i8*, i8** @HCLGE_RSS_INPUT_TUPLE_SCTP, align 8
  %42 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %42, i64 %44
  %46 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  store i8* %41, i8** %47, align 8
  %48 = load i8*, i8** @HCLGE_RSS_INPUT_TUPLE_OTHER, align 8
  %49 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %49, i64 %51
  %53 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  store i8* %48, i8** %54, align 8
  %55 = load i8*, i8** @HCLGE_RSS_INPUT_TUPLE_OTHER, align 8
  %56 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %56, i64 %58
  %60 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i8* %55, i8** %61, align 8
  %62 = load i8*, i8** @HCLGE_RSS_INPUT_TUPLE_OTHER, align 8
  %63 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %63, i64 %65
  %67 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i8* %62, i8** %68, align 8
  %69 = load i8*, i8** @HCLGE_RSS_INPUT_TUPLE_SCTP, align 8
  %70 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %70, i64 %72
  %74 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i8* %69, i8** %75, align 8
  %76 = load i8*, i8** @HCLGE_RSS_INPUT_TUPLE_OTHER, align 8
  %77 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %77, i64 %79
  %81 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i8* %76, i8** %82, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %84, i64 %86
  %88 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 8
  %89 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %89, i64 %91
  %93 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @hclge_hash_key, align 4
  %96 = load i32, i32* @HCLGE_RSS_KEY_SIZE, align 4
  %97 = call i32 @memcpy(i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %26
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %19

101:                                              ; preds = %19
  %102 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %103 = call i32 @hclge_rss_indir_init_cfg(%struct.hclge_dev* %102)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hclge_rss_indir_init_cfg(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
