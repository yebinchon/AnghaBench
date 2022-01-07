; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hnae3_handle = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hnae3_handle*, i32*, i32*, i32)* }
%struct.TYPE_6__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@ETH_RSS_HASH_NO_CHANGE = common dso_local global i32 0, align 4
@ETH_RSS_HASH_XOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"hash func not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"set rss failed for indir is empty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32)* @hns3_set_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_set_rss(%struct.net_device* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hnae3_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %11)
  store %struct.hnae3_handle* %12, %struct.hnae3_handle** %10, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hnae3_handle*, i32*, i32*, i32)*, i32 (%struct.hnae3_handle*, i32*, i32*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.hnae3_handle*, i32*, i32*, i32)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %73

24:                                               ; preds = %4
  %25 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  %26 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %31, %24
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ETH_RSS_HASH_NO_CHANGE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ETH_RSS_HASH_XOR, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43, %31
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = call i32 @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %73

52:                                               ; preds = %43, %39, %35
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = call i32 @netdev_err(%struct.net_device* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %73

60:                                               ; preds = %52
  %61 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  %62 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32 (%struct.hnae3_handle*, i32*, i32*, i32)*, i32 (%struct.hnae3_handle*, i32*, i32*, i32)** %66, align 8
  %68 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 %67(%struct.hnae3_handle* %68, i32* %69, i32* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %60, %55, %47, %21
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
