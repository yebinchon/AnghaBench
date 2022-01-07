; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i64 }
%struct.uniphier_sd_priv = type { i32 }

@UNIPHIER_SD_CAP_EXTENDED_IP = common dso_local global i32 0, align 4
@UNIPHIER_SD_HOST_MODE = common dso_local global i64 0, align 8
@UNIPHIER_SD_CLKCTL_OFFEN = common dso_local global i32 0, align 4
@CTL_SD_CARD_CLK_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @uniphier_sd_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_sd_host_init(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.uniphier_sd_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %5 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %6 = call %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host* %5)
  store %struct.uniphier_sd_priv* %6, %struct.uniphier_sd_priv** %3, align 8
  %7 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %3, align 8
  %8 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UNIPHIER_SD_CAP_EXTENDED_IP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 257, i32* %4, align 4
  br label %15

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %18 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UNIPHIER_SD_HOST_MODE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  store i32 0, i32* %4, align 4
  %23 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %3, align 8
  %24 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UNIPHIER_SD_CAP_EXTENDED_IP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load i32, i32* @UNIPHIER_SD_CLKCTL_OFFEN, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %15
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %36 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %39 = shl i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = call i32 @writel(i32 %34, i64 %41)
  ret void
}

declare dso_local %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
