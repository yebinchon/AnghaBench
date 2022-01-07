; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_get_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_get_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32 }
%struct.msdc_host = type { i64, i32 }

@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@MSDC_PS = common dso_local global i64 0, align 8
@MSDC_PS_CDSTS = common dso_local global i32 0, align 4
@MMC_CAP2_CD_ACTIVE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @msdc_get_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_get_cd(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.msdc_host*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.msdc_host* %7, %struct.msdc_host** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %17 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %22 = call i32 @mmc_gpio_get_cd(%struct.mmc_host* %21)
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %15
  %24 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %25 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MSDC_PS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = load i32, i32* @MSDC_PS_CDSTS, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MMC_CAP2_CD_ACTIVE_HIGH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %23
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %23
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %38, %20, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_gpio_get_cd(%struct.mmc_host*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
