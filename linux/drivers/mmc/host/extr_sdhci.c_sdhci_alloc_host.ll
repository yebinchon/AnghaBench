; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_alloc_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_alloc_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.mmc_host* }
%struct.mmc_host = type { i32* }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@sdhci_ops = common dso_local global i32 0, align 4
@SDHCI_SIGNALING_330 = common dso_local global i32 0, align 4
@SDHCI_CQE_INT_MASK = common dso_local global i32 0, align 4
@SDHCI_CQE_INT_ERR_MASK = common dso_local global i32 0, align 4
@MAX_TUNING_LOOP = common dso_local global i32 0, align 4
@SDHCI_DEFAULT_BOUNDARY_ARG = common dso_local global i32 0, align 4
@SDHCI_MAX_SEGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sdhci_host* @sdhci_alloc_host(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca %struct.sdhci_host*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp eq %struct.device* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = add i64 40, %12
  %14 = trunc i64 %13 to i32
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.mmc_host* @mmc_alloc_host(i32 %14, %struct.device* %15)
  store %struct.mmc_host* %16, %struct.mmc_host** %6, align 8
  %17 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %18 = icmp ne %struct.mmc_host* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.sdhci_host* @ERR_PTR(i32 %21)
  store %struct.sdhci_host* %22, %struct.sdhci_host** %3, align 8
  br label %59

23:                                               ; preds = %2
  %24 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %25 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %24)
  store %struct.sdhci_host* %25, %struct.sdhci_host** %7, align 8
  %26 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 8
  store %struct.mmc_host* %26, %struct.mmc_host** %28, align 8
  %29 = load i32, i32* @sdhci_ops, align 4
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %31 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 7
  %34 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load i32, i32* @SDHCI_SIGNALING_330, align 4
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %38 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @SDHCI_CQE_INT_MASK, align 4
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %41 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @SDHCI_CQE_INT_ERR_MASK, align 4
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %46 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load i32, i32* @MAX_TUNING_LOOP, align 4
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %49 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @SDHCI_DEFAULT_BOUNDARY_ARG, align 4
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %52 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @SDHCI_MAX_SEGS, align 4
  %54 = mul nsw i32 %53, 2
  %55 = add nsw i32 %54, 1
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %57 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  store %struct.sdhci_host* %58, %struct.sdhci_host** %3, align 8
  br label %59

59:                                               ; preds = %23, %19
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  ret %struct.sdhci_host* %60
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.device*) #1

declare dso_local %struct.sdhci_host* @ERR_PTR(i32) #1

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
