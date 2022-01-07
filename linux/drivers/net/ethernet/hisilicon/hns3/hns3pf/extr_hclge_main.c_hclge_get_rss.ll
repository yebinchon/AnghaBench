; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { i32, i32*, i32 }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@ETH_RSS_HASH_XOR = common dso_local global i32 0, align 4
@ETH_RSS_HASH_UNKNOWN = common dso_local global i32 0, align 4
@HCLGE_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@HCLGE_RSS_IND_TBL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32*, i32*, i32*)* @hclge_get_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_rss(%struct.hnae3_handle* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hclge_vport*, align 8
  %10 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %12 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %11)
  store %struct.hclge_vport* %12, %struct.hclge_vport** %9, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load %struct.hclge_vport*, %struct.hclge_vport** %9, align 8
  %17 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %25 [
    i32 128, label %19
    i32 129, label %22
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  br label %28

22:                                               ; preds = %15
  %23 = load i32, i32* @ETH_RSS_HASH_XOR, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  br label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @ETH_RSS_HASH_UNKNOWN, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22, %19
  br label %29

29:                                               ; preds = %28, %4
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.hclge_vport*, %struct.hclge_vport** %9, align 8
  %35 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HCLGE_RSS_KEY_SIZE, align 4
  %38 = call i32 @memcpy(i32* %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i32*, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @HCLGE_RSS_IND_TBL_SIZE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.hclge_vport*, %struct.hclge_vport** %9, align 8
  %49 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %43

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %39
  ret i32 0
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
