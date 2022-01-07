; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_simple.c_mmc_pwrseq_simple_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_simple.c_mmc_pwrseq_simple_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mmc_pwrseq_simple = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ext_clock\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"post-power-on-delay-ms\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"power-off-delay-us\00", align 1
@mmc_pwrseq_simple_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmc_pwrseq_simple_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_pwrseq_simple_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmc_pwrseq_simple*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mmc_pwrseq_simple* @devm_kzalloc(%struct.device* %8, i32 40, i32 %9)
  store %struct.mmc_pwrseq_simple* %10, %struct.mmc_pwrseq_simple** %4, align 8
  %11 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %12 = icmp ne %struct.mmc_pwrseq_simple* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %97

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @devm_clk_get(%struct.device* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %16
  %27 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PTR_ERR(i32 %29)
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %97

39:                                               ; preds = %26, %16
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %42 = call i32 @devm_gpiod_get_array(%struct.device* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %39
  %51 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  %63 = load i32, i32* @ENOSYS, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %68 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %2, align 4
  br label %97

71:                                               ; preds = %58, %50, %39
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %74 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %73, i32 0, i32 2
  %75 = call i32 @device_property_read_u32(%struct.device* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %74)
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %78 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %77, i32 0, i32 1
  %79 = call i32 @device_property_read_u32(%struct.device* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %78)
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store %struct.device* %80, %struct.device** %83, align 8
  %84 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32* @mmc_pwrseq_simple_ops, i32** %86, align 8
  %87 = load i32, i32* @THIS_MODULE, align 4
  %88 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %89 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %93 = call i32 @platform_set_drvdata(%struct.platform_device* %91, %struct.mmc_pwrseq_simple* %92)
  %94 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %94, i32 0, i32 0
  %96 = call i32 @mmc_pwrseq_register(%struct.TYPE_2__* %95)
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %71, %66, %34, %13
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.mmc_pwrseq_simple* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get_array(%struct.device*, i8*, i32) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_pwrseq_simple*) #1

declare dso_local i32 @mmc_pwrseq_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
