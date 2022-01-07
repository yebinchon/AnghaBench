; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_sd8787.c_mmc_pwrseq_sd8787_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_sd8787.c_mmc_pwrseq_sd8787_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mmc_pwrseq_sd8787 = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@mmc_pwrseq_sd8787_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmc_pwrseq_sd8787_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_pwrseq_sd8787_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmc_pwrseq_sd8787*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mmc_pwrseq_sd8787* @devm_kzalloc(%struct.device* %8, i32 40, i32 %9)
  store %struct.mmc_pwrseq_sd8787* %10, %struct.mmc_pwrseq_sd8787** %4, align 8
  %11 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %12 = icmp ne %struct.mmc_pwrseq_sd8787* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %19 = call i8* @devm_gpiod_get(%struct.device* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_pwrseq_sd8787, %struct.mmc_pwrseq_sd8787* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_pwrseq_sd8787, %struct.mmc_pwrseq_sd8787* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_pwrseq_sd8787, %struct.mmc_pwrseq_sd8787* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %2, align 4
  br label %66

32:                                               ; preds = %16
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %35 = call i8* @devm_gpiod_get(%struct.device* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_pwrseq_sd8787, %struct.mmc_pwrseq_sd8787* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_pwrseq_sd8787, %struct.mmc_pwrseq_sd8787* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_pwrseq_sd8787, %struct.mmc_pwrseq_sd8787* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %2, align 4
  br label %66

48:                                               ; preds = %32
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %51 = getelementptr inbounds %struct.mmc_pwrseq_sd8787, %struct.mmc_pwrseq_sd8787* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store %struct.device* %49, %struct.device** %52, align 8
  %53 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_pwrseq_sd8787, %struct.mmc_pwrseq_sd8787* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32* @mmc_pwrseq_sd8787_ops, i32** %55, align 8
  %56 = load i32, i32* @THIS_MODULE, align 4
  %57 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_pwrseq_sd8787, %struct.mmc_pwrseq_sd8787* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %62 = call i32 @platform_set_drvdata(%struct.platform_device* %60, %struct.mmc_pwrseq_sd8787* %61)
  %63 = load %struct.mmc_pwrseq_sd8787*, %struct.mmc_pwrseq_sd8787** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_pwrseq_sd8787, %struct.mmc_pwrseq_sd8787* %63, i32 0, i32 0
  %65 = call i32 @mmc_pwrseq_register(%struct.TYPE_2__* %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %48, %43, %27, %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.mmc_pwrseq_sd8787* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_pwrseq_sd8787*) #1

declare dso_local i32 @mmc_pwrseq_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
