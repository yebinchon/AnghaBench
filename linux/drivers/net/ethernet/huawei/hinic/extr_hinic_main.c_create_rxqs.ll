; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_create_rxqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_create_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { i32*, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hinic_rq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to init rxq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_dev*)* @create_rxqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_rxqs(%struct.hinic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hinic_rq*, align 8
  store %struct.hinic_dev* %0, %struct.hinic_dev** %3, align 8
  %11 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @hinic_hwdev_num_qps(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %15, i32 0, i32 2
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %8, align 8
  %18 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %99

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  store i64 %28, i64* %9, align 8
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @devm_kzalloc(i32* %30, i64 %31, i32 %32)
  %34 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %99

43:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %50 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call %struct.hinic_rq* @hinic_hwdev_get_rq(i32 %51, i32 %52)
  store %struct.hinic_rq* %53, %struct.hinic_rq** %10, align 8
  %54 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load %struct.hinic_rq*, %struct.hinic_rq** %10, align 8
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = call i32 @hinic_init_rxq(i32* %59, %struct.hinic_rq* %60, %struct.net_device* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %48
  %66 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %67 = load i32, i32* @drv, align 4
  %68 = load %struct.net_device*, %struct.net_device** %8, align 8
  %69 = call i32 @netif_err(%struct.hinic_dev* %66, i32 %67, %struct.net_device* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %75

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %44

74:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %99

75:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @hinic_clean_rxq(i32* %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %76

91:                                               ; preds = %76
  %92 = load %struct.net_device*, %struct.net_device** %8, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %95 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @devm_kfree(i32* %93, i32* %96)
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %91, %74, %40, %22
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @hinic_hwdev_num_qps(i32) #1

declare dso_local i32* @devm_kzalloc(i32*, i64, i32) #1

declare dso_local %struct.hinic_rq* @hinic_hwdev_get_rq(i32, i32) #1

declare dso_local i32 @hinic_init_rxq(i32*, %struct.hinic_rq*, %struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.hinic_dev*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @hinic_clean_rxq(i32*) #1

declare dso_local i32 @devm_kfree(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
