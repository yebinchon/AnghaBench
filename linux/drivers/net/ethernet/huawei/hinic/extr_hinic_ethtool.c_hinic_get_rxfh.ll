; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hinic_dev = type { i32, i32 }

@HINIC_RSS_ENABLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@ETH_RSS_HASH_XOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64*)* @hinic_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinic_get_rxfh(%struct.net_device* %0, i32* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.hinic_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %13)
  store %struct.hinic_dev* %14, %struct.hinic_dev** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %16 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HINIC_RSS_ENABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %76

24:                                               ; preds = %4
  %25 = load i64*, i64** %9, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %29 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %30 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @hinic_rss_get_hash_engine(%struct.hinic_dev* %28, i32 %31, i64* %11)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %76

38:                                               ; preds = %27
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  br label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @ETH_RSS_HASH_XOR, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %24
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %53 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %54 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @hinic_rss_get_indir_tbl(%struct.hinic_dev* %52, i32 %55, i32* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %76

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i64*, i64** %8, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %69 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %70 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i64*, i64** %8, align 8
  %73 = call i32 @hinic_rss_get_template_tbl(%struct.hinic_dev* %68, i32 %71, i64* %72)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %67, %64
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %60, %35, %21
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hinic_rss_get_hash_engine(%struct.hinic_dev*, i32, i64*) #1

declare dso_local i32 @hinic_rss_get_indir_tbl(%struct.hinic_dev*, i32, i32*) #1

declare dso_local i32 @hinic_rss_get_template_tbl(%struct.hinic_dev*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
