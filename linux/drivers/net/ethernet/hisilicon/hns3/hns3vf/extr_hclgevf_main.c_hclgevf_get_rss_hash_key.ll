; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_rss_hash_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_rss_hash_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_2__*, %struct.hclgevf_rss_cfg }
%struct.TYPE_2__ = type { i32 }
%struct.hclgevf_rss_cfg = type { i32* }

@HCLGEVF_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@HCLGE_MBX_GET_RSS_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"VF get rss hash key from PF failed, ret=%d\00", align 1
@HCLGEVF_RSS_MBX_RESP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_get_rss_hash_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_get_rss_hash_key(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.hclgevf_rss_cfg*, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %10, i32 0, i32 1
  store %struct.hclgevf_rss_cfg* %11, %struct.hclgevf_rss_cfg** %4, align 8
  %12 = load i32, i32* @HCLGEVF_RSS_KEY_SIZE, align 4
  %13 = add nsw i32 %12, 8
  %14 = sub nsw i32 %13, 1
  %15 = sdiv i32 %14, 8
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %64, %1
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %67

20:                                               ; preds = %16
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %22 = load i32, i32* @HCLGE_MBX_GET_RSS_KEY, align 4
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %24 = call i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev* %21, i32 %22, i32 0, i32* %8, i32 4, i32 1, i32* %23, i32 8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %2, align 4
  br label %68

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 8, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %44 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %50 = load i32, i32* @HCLGEVF_RSS_KEY_SIZE, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %50, %51
  %53 = call i32 @memcpy(i32* %48, i32* %49, i32 %52)
  br label %63

54:                                               ; preds = %35
  %55 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %56 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %62 = call i32 @memcpy(i32* %60, i32* %61, i32 8)
  br label %63

63:                                               ; preds = %54, %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %16

67:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %27
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev*, i32, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
