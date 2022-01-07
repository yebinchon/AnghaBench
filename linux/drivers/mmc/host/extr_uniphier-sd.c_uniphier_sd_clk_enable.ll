; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.mmc_host* }
%struct.mmc_host = type { i32, i32 }
%struct.uniphier_sd_priv = type { i32, i32, i32, i32, i32 }

@ULONG_MAX = common dso_local global i32 0, align 4
@UNIPHIER_SD_CAP_EXTENDED_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*)* @uniphier_sd_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_sd_clk_enable(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.uniphier_sd_priv*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  %7 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %8 = call %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host* %7)
  store %struct.uniphier_sd_priv* %8, %struct.uniphier_sd_priv** %4, align 8
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %9, i32 0, i32 0
  %11 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  store %struct.mmc_host* %11, %struct.mmc_host** %5, align 8
  %12 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %13 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_prepare_enable(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %95

20:                                               ; preds = %1
  %21 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %22 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ULONG_MAX, align 4
  %25 = call i32 @clk_set_rate(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %89

29:                                               ; preds = %20
  %30 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %31 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_get_rate(i32 %32)
  %34 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %35 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %42 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %45 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %29
  %47 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %48 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UNIPHIER_SD_CAP_EXTENDED_IP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %55 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 1024
  %58 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %59 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %67

60:                                               ; preds = %46
  %61 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %62 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 512
  %65 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %66 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %69 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @reset_control_deassert(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %89

75:                                               ; preds = %67
  %76 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %77 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @reset_control_deassert(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %95

84:                                               ; preds = %82
  %85 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %86 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @reset_control_assert(i32 %87)
  br label %89

89:                                               ; preds = %84, %74, %28
  %90 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %4, align 8
  %91 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @clk_disable_unprepare(i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %89, %83, %18
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
