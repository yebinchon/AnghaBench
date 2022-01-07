; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_uhs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_uhs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.uniphier_sd_priv = type { i8*, i8*, i8* }

@PINCTRL_STATE_DEFAULT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"uhs\00", align 1
@uniphier_sd_start_signal_voltage_switch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*, %struct.uniphier_sd_priv*)* @uniphier_sd_uhs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_sd_uhs_init(%struct.tmio_mmc_host* %0, %struct.uniphier_sd_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmio_mmc_host*, align 8
  %5 = alloca %struct.uniphier_sd_priv*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %4, align 8
  store %struct.uniphier_sd_priv* %1, %struct.uniphier_sd_priv** %5, align 8
  %6 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %7 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mmc_dev(i32 %8)
  %10 = call i8* @devm_pinctrl_get(i32 %9)
  %11 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %12 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %14 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %20 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @PTR_ERR(i8* %21)
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %2
  %24 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %25 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** @PINCTRL_STATE_DEFAULT, align 8
  %28 = call i8* @pinctrl_lookup_state(i8* %26, i8* %27)
  %29 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %30 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %32 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %38 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %23
  %42 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %43 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @pinctrl_lookup_state(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %47 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %49 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @IS_ERR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %55 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @PTR_ERR(i8* %56)
  store i32 %57, i32* %3, align 4
  br label %63

58:                                               ; preds = %41
  %59 = load i32, i32* @uniphier_sd_start_signal_voltage_switch, align 4
  %60 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %61 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %53, %36, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i8* @devm_pinctrl_get(i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @pinctrl_lookup_state(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
