; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_emmc.c_mmc_pwrseq_emmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_emmc.c_mmc_pwrseq_emmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mmc_pwrseq_emmc = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, %struct.device*, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@mmc_pwrseq_emmc_reset_nb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"EMMC reset pin tied to a sleepy GPIO driver; reset on emergency-reboot disabled\0A\00", align 1
@mmc_pwrseq_emmc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmc_pwrseq_emmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_pwrseq_emmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmc_pwrseq_emmc*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mmc_pwrseq_emmc* @devm_kzalloc(%struct.device* %8, i32 40, i32 %9)
  store %struct.mmc_pwrseq_emmc* %10, %struct.mmc_pwrseq_emmc** %4, align 8
  %11 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %12 = icmp ne %struct.mmc_pwrseq_emmc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %19 = call i32 @devm_gpiod_get(%struct.device* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %70

32:                                               ; preds = %16
  %33 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @gpiod_cansleep(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @mmc_pwrseq_emmc_reset_nb, align 4
  %40 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 255, i32* %45, align 8
  %46 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %46, i32 0, i32 1
  %48 = call i32 @register_restart_handler(%struct.TYPE_3__* %47)
  br label %52

49:                                               ; preds = %32
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 @dev_notice(%struct.device* %50, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %38
  %53 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32* @mmc_pwrseq_emmc_ops, i32** %55, align 8
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store %struct.device* %56, %struct.device** %59, align 8
  %60 = load i32, i32* @THIS_MODULE, align 4
  %61 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %62 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %66 = call i32 @platform_set_drvdata(%struct.platform_device* %64, %struct.mmc_pwrseq_emmc* %65)
  %67 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %4, align 8
  %68 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %67, i32 0, i32 0
  %69 = call i32 @mmc_pwrseq_register(%struct.TYPE_4__* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %52, %27, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.mmc_pwrseq_emmc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiod_cansleep(i32) #1

declare dso_local i32 @register_restart_handler(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_pwrseq_emmc*) #1

declare dso_local i32 @mmc_pwrseq_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
