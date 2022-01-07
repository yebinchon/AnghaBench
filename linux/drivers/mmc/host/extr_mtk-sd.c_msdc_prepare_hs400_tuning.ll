; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_prepare_hs400_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_prepare_hs400_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.msdc_host = type { i32, i64, i32, i64 }

@EMMC50_PAD_DS_TUNE = common dso_local global i64 0, align 8
@PAD_DS_TUNE = common dso_local global i64 0, align 8
@MSDC_PATCH_BIT2 = common dso_local global i64 0, align 8
@MSDC_PATCH_BIT2_CFGCRCSTS = common dso_local global i32 0, align 4
@EMMC50_CFG3 = common dso_local global i64 0, align 8
@EMMC50_CFG3_OUTS_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @msdc_prepare_hs400_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_prepare_hs400_tuning(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.msdc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.msdc_host* %7, %struct.msdc_host** %5, align 8
  %8 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %9 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %11 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %16 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %19 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EMMC50_PAD_DS_TUNE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %26 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %29 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PAD_DS_TUNE, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  br label %34

34:                                               ; preds = %24, %14
  %35 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %36 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MSDC_PATCH_BIT2, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @MSDC_PATCH_BIT2_CFGCRCSTS, align 4
  %41 = call i32 @sdr_clr_bits(i64 %39, i32 %40)
  %42 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %43 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EMMC50_CFG3, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* @EMMC50_CFG3_OUTS_WR, align 4
  %48 = call i32 @sdr_set_field(i64 %46, i32 %47, i32 2)
  ret i32 0
}

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sdr_clr_bits(i64, i32) #1

declare dso_local i32 @sdr_set_field(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
