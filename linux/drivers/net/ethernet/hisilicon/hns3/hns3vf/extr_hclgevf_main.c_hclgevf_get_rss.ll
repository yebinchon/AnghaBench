; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hclgevf_dev = type { %struct.hclgevf_rss_cfg }
%struct.hclgevf_rss_cfg = type { i32, i32*, i32 }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@ETH_RSS_HASH_XOR = common dso_local global i32 0, align 4
@ETH_RSS_HASH_UNKNOWN = common dso_local global i32 0, align 4
@HCLGEVF_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@HCLGEVF_RSS_IND_TBL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32*, i32*, i32*)* @hclgevf_get_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_get_rss(%struct.hnae3_handle* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hclgevf_dev*, align 8
  %11 = alloca %struct.hclgevf_rss_cfg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
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
  br i1 %23, label %24, label %52

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %11, align 8
  %29 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %37 [
    i32 128, label %31
    i32 129, label %34
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  br label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @ETH_RSS_HASH_XOR, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  br label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @ETH_RSS_HASH_UNKNOWN, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34, %31
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %11, align 8
  %47 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @HCLGEVF_RSS_KEY_SIZE, align 4
  %50 = call i32 @memcpy(i32* %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %41
  br label %76

52:                                               ; preds = %4
  %53 = load i32*, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %63 = call i32 @hclgevf_get_rss_hash_key(%struct.hclgevf_dev* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %5, align 4
  br label %101

68:                                               ; preds = %61
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %11, align 8
  %71 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @HCLGEVF_RSS_KEY_SIZE, align 4
  %74 = call i32 @memcpy(i32* %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %58
  br label %76

76:                                               ; preds = %75, %51
  %77 = load i32*, i32** %7, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %100

79:                                               ; preds = %76
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @HCLGEVF_RSS_IND_TBL_SIZE, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %11, align 8
  %86 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %80

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99, %76
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %66
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @hclgevf_get_rss_hash_key(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
