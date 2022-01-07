; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_check_scc_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_check_scc_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.renesas_sdhi = type { i32 }

@TMIO_MMC_HAVE_4TAP_HS400 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR104 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_HS200 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@SH_MOBILE_SDHI_SCC_RVSCNTL = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_RVSREQ = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_RVSREQ_RVSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*)* @renesas_sdhi_check_scc_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_sdhi_check_scc_error(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.renesas_sdhi*, align 8
  %5 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  %6 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %7 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %6)
  store %struct.renesas_sdhi* %7, %struct.renesas_sdhi** %4, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TMIO_MMC_HAVE_4TAP_HS400, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %45, label %23

23:                                               ; preds = %1
  %24 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MMC_TIMING_MMC_HS200, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %45, label %32

32:                                               ; preds = %23
  %33 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %32
  store i32 0, i32* %2, align 4
  br label %74

45:                                               ; preds = %41, %23, %1
  %46 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = call i64 @mmc_doing_retune(%struct.TYPE_6__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %74

52:                                               ; preds = %45
  %53 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %54 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %55 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSCNTL, align 4
  %56 = call i32 @sd_scc_read32(%struct.tmio_mmc_host* %53, %struct.renesas_sdhi* %54, i32 %55)
  %57 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  %61 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %62 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %63 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSREQ, align 4
  %64 = call i32 @sd_scc_read32(%struct.tmio_mmc_host* %61, %struct.renesas_sdhi* %62, i32 %63)
  %65 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSREQ_RVSERR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %70 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %71 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSREQ, align 4
  %72 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %69, %struct.renesas_sdhi* %70, i32 %71, i32 0)
  store i32 1, i32* %2, align 4
  br label %74

73:                                               ; preds = %60, %52
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %68, %51, %44
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

declare dso_local i64 @mmc_doing_retune(%struct.TYPE_6__*) #1

declare dso_local i32 @sd_scc_read32(%struct.tmio_mmc_host*, %struct.renesas_sdhi*, i32) #1

declare dso_local i32 @sd_scc_write32(%struct.tmio_mmc_host*, %struct.renesas_sdhi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
