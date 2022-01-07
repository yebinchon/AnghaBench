; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hclgevf_dev = type { %struct.hclgevf_rss_cfg }
%struct.hclgevf_rss_cfg = type { i32*, i32, i32 }

@HCLGEVF_RSS_HASH_ALGO_TOEPLITZ = common dso_local global i32 0, align 4
@HCLGEVF_RSS_HASH_ALGO_SIMPLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HCLGEVF_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@HCLGEVF_RSS_IND_TBL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32*, i32*, i32)* @hclgevf_set_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_set_rss(%struct.hnae3_handle* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hclgevf_dev*, align 8
  %11 = alloca %struct.hclgevf_rss_cfg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %15 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %14)
  store %struct.hclgevf_dev* %15, %struct.hclgevf_dev** %10, align 8
  %16 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %17 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %16, i32 0, i32 0
  store %struct.hclgevf_rss_cfg* %17, %struct.hclgevf_rss_cfg** %11, align 8
  %18 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %19 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 33
  br i1 %23, label %24, label %60

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %38 [
    i32 129, label %29
    i32 128, label %33
    i32 130, label %37
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @HCLGEVF_RSS_HASH_ALGO_TOEPLITZ, align 4
  %31 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %11, align 8
  %32 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  br label %41

33:                                               ; preds = %27
  %34 = load i32, i32* @HCLGEVF_RSS_HASH_ALGO_SIMPLE, align 4
  %35 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %11, align 8
  %36 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %27
  br label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %83

41:                                               ; preds = %37, %33, %29
  %42 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %43 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %11, align 8
  %44 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @hclgevf_set_rss_algo_key(%struct.hclgevf_dev* %42, i32 %45, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %83

52:                                               ; preds = %41
  %53 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %11, align 8
  %54 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* @HCLGEVF_RSS_KEY_SIZE, align 4
  %58 = call i32 @memcpy(i32 %55, i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %24
  br label %60

60:                                               ; preds = %59, %4
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %77, %60
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @HCLGEVF_RSS_IND_TBL_SIZE, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %11, align 8
  %72 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %61

80:                                               ; preds = %61
  %81 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %82 = call i32 @hclgevf_set_rss_indir_table(%struct.hclgevf_dev* %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %50, %38
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i32 @hclgevf_set_rss_algo_key(%struct.hclgevf_dev*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hclgevf_set_rss_indir_table(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
