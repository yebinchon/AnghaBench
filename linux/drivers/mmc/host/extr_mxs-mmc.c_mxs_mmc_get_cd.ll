; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_get_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_get_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32 }
%struct.mxs_mmc_host = type { i64, %struct.mxs_ssp }
%struct.mxs_ssp = type { i64 }

@ENOSYS = common dso_local global i32 0, align 4
@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@BM_SSP_STATUS_CARD_DETECT = common dso_local global i32 0, align 4
@MMC_CAP2_CD_ACTIVE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mxs_mmc_get_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_mmc_get_cd(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mxs_mmc_host*, align 8
  %5 = alloca %struct.mxs_ssp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.mxs_mmc_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.mxs_mmc_host* %9, %struct.mxs_mmc_host** %4, align 8
  %10 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %10, i32 0, i32 1
  store %struct.mxs_ssp* %11, %struct.mxs_ssp** %5, align 8
  %12 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %4, align 8
  %13 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %21 = call i32 @mmc_gpio_get_cd(%struct.mmc_host* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %61

26:                                               ; preds = %19
  %27 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %26
  %34 = load %struct.mxs_ssp*, %struct.mxs_ssp** %5, align 8
  %35 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mxs_ssp*, %struct.mxs_ssp** %5, align 8
  %38 = call i64 @HW_SSP_STATUS(%struct.mxs_ssp* %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @readl(i64 %39)
  %41 = load i32, i32* @BM_SSP_STATUS_CARD_DETECT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %33, %26
  %46 = phi i1 [ true, %26 ], [ %44, %33 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MMC_CAP2_CD_ACTIVE_HIGH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %45
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %24, %16
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.mxs_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_gpio_get_cd(%struct.mmc_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @HW_SSP_STATUS(%struct.mxs_ssp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
