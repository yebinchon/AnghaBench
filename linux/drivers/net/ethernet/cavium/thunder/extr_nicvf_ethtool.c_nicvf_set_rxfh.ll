; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nicvf = type { i32, %struct.nicvf_rss_info }
%struct.nicvf_rss_info = type { i32, i32, i32*, i32 }

@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"RSS is disabled, cannot change settings\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RSS_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64)* @nicvf_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_set_rxfh(%struct.net_device* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nicvf*, align 8
  %11 = alloca %struct.nicvf_rss_info*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.nicvf* @netdev_priv(%struct.net_device* %13)
  store %struct.nicvf* %14, %struct.nicvf** %10, align 8
  %15 = load %struct.nicvf*, %struct.nicvf** %10, align 8
  %16 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %15, i32 0, i32 1
  store %struct.nicvf_rss_info* %16, %struct.nicvf_rss_info** %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %83

27:                                               ; preds = %20, %4
  %28 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %11, align 8
  %29 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load %struct.nicvf*, %struct.nicvf** %10, align 8
  %34 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @netdev_err(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %83

39:                                               ; preds = %27
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %11, align 8
  %46 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %11, align 8
  %56 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %43

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i64*, i64** %8, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %11, align 8
  %70 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i64*, i64** %8, align 8
  %73 = load i32, i32* @RSS_HASH_KEY_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(i32 %71, i64* %72, i32 %76)
  %78 = load %struct.nicvf*, %struct.nicvf** %10, align 8
  %79 = call i32 @nicvf_set_rss_key(%struct.nicvf* %78)
  br label %80

80:                                               ; preds = %68, %65
  %81 = load %struct.nicvf*, %struct.nicvf** %10, align 8
  %82 = call i32 @nicvf_config_rss(%struct.nicvf* %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %32, %24
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @nicvf_set_rss_key(%struct.nicvf*) #1

declare dso_local i32 @nicvf_config_rss(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
