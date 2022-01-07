; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c___set_rss_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c___set_rss_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hinic_dev = type { i32, i8*, i8* }

@HINIC_RSS_INDIR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@HINIC_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*)* @__set_rss_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_rss_rxfh(%struct.net_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hinic_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.hinic_dev* %11, %struct.hinic_dev** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %58

14:                                               ; preds = %3
  %15 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %16 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @HINIC_RSS_INDIR_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 %23, i32 %24)
  %26 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %27 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %29 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %101

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35, %14
  %37 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %38 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @HINIC_RSS_INDIR_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memcpy(i8* %39, i32* %40, i32 %44)
  %46 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %47 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %48 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @hinic_rss_set_indir_tbl(%struct.hinic_dev* %46, i32 %49, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %36
  %55 = load i32, i32* @EFAULT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %101

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %57, %3
  %59 = load i32*, i32** %7, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %100

61:                                               ; preds = %58
  %62 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %63 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %81, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @HINIC_RSS_KEY_SIZE, align 4
  %68 = mul nsw i32 %67, 2
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kzalloc(i32 %68, i32 %69)
  %71 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %72 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %74 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %101

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %83 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @HINIC_RSS_KEY_SIZE, align 4
  %87 = call i32 @memcpy(i8* %84, i32* %85, i32 %86)
  %88 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %89 = load %struct.hinic_dev*, %struct.hinic_dev** %8, align 8
  %90 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @hinic_rss_set_template_tbl(%struct.hinic_dev* %88, i32 %91, i32* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %81
  %97 = load i32, i32* @EFAULT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %101

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %58
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %96, %77, %54, %32
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @hinic_rss_set_indir_tbl(%struct.hinic_dev*, i32, i32*) #1

declare dso_local i32 @hinic_rss_set_template_tbl(%struct.hinic_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
