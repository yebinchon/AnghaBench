; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { i32, i32*, i32, %struct.hclge_dev* }
%struct.hclge_dev = type { i32 }

@HCLGE_RSS_HASH_ALGO_TOEPLITZ = common dso_local global i32 0, align 4
@HCLGE_RSS_HASH_ALGO_SIMPLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HCLGE_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@HCLGE_RSS_IND_TBL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32*, i32*, i32)* @hclge_set_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_rss(%struct.hnae3_handle* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hclge_vport*, align 8
  %11 = alloca %struct.hclge_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %16 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %15)
  store %struct.hclge_vport* %16, %struct.hclge_vport** %10, align 8
  %17 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %18 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %17, i32 0, i32 3
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %18, align 8
  store %struct.hclge_dev* %19, %struct.hclge_dev** %11, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %54

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %32 [
    i32 129, label %24
    i32 128, label %26
    i32 130, label %28
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @HCLGE_RSS_HASH_ALGO_TOEPLITZ, align 4
  store i32 %25, i32* %12, align 4
  br label %35

26:                                               ; preds = %22
  %27 = load i32, i32* @HCLGE_RSS_HASH_ALGO_SIMPLE, align 4
  store i32 %27, i32* %12, align 4
  br label %35

28:                                               ; preds = %22
  %29 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %30 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  br label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %80

35:                                               ; preds = %28, %26, %24
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @hclge_set_rss_algo_key(%struct.hclge_dev* %36, i32 %37, i32* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %80

44:                                               ; preds = %35
  %45 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %46 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @HCLGE_RSS_KEY_SIZE, align 4
  %50 = call i32 @memcpy(i32 %47, i32* %48, i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %53 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %44, %4
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %71, %54
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @HCLGE_RSS_IND_TBL_SIZE, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %66 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %55

74:                                               ; preds = %55
  %75 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %76 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %77 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @hclge_set_rss_indir_table(%struct.hclge_dev* %75, i32* %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %74, %42, %32
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_set_rss_algo_key(%struct.hclge_dev*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hclge_set_rss_indir_table(%struct.hclge_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
