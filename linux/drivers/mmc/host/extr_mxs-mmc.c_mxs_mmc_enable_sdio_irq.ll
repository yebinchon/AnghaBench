; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mxs_mmc_host = type { i32, i32, i32, %struct.mxs_ssp }
%struct.mxs_ssp = type { i64 }

@BM_SSP_CTRL0_SDIO_IRQ_CHECK = common dso_local global i32 0, align 4
@HW_SSP_CTRL0 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@BM_SSP_CTRL1_SDIO_IRQ_EN = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@BM_SSP_STATUS_SDIO_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @mxs_mmc_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_mmc_enable_sdio_irq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxs_mmc_host*, align 8
  %6 = alloca %struct.mxs_ssp*, align 8
  %7 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.mxs_mmc_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.mxs_mmc_host* %9, %struct.mxs_mmc_host** %5, align 8
  %10 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %11 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %10, i32 0, i32 3
  store %struct.mxs_ssp* %11, %struct.mxs_ssp** %6, align 8
  %12 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %13 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %12, i32 0, i32 2
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %18 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %2
  %22 = load i32, i32* @BM_SSP_CTRL0_SDIO_IRQ_CHECK, align 4
  %23 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %24 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HW_SSP_CTRL0, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %22, i64 %29)
  %31 = load i32, i32* @BM_SSP_CTRL1_SDIO_IRQ_EN, align 4
  %32 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %33 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %36 = call i64 @HW_SSP_CTRL1(%struct.mxs_ssp* %35)
  %37 = add nsw i64 %34, %36
  %38 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %31, i64 %39)
  br label %61

41:                                               ; preds = %2
  %42 = load i32, i32* @BM_SSP_CTRL0_SDIO_IRQ_CHECK, align 4
  %43 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %44 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HW_SSP_CTRL0, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %42, i64 %49)
  %51 = load i32, i32* @BM_SSP_CTRL1_SDIO_IRQ_EN, align 4
  %52 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %53 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %56 = call i64 @HW_SSP_CTRL1(%struct.mxs_ssp* %55)
  %57 = add nsw i64 %54, %56
  %58 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %51, i64 %59)
  br label %61

61:                                               ; preds = %41, %21
  %62 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %63 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %62, i32 0, i32 2
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %61
  %69 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %70 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %73 = call i64 @HW_SSP_STATUS(%struct.mxs_ssp* %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @readl(i64 %74)
  %76 = load i32, i32* @BM_SSP_STATUS_SDIO_IRQ, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %81 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mmc_signal_sdio_irq(i32 %82)
  br label %84

84:                                               ; preds = %79, %68, %61
  ret void
}

declare dso_local %struct.mxs_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @HW_SSP_CTRL1(%struct.mxs_ssp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @HW_SSP_STATUS(%struct.mxs_ssp*) #1

declare dso_local i32 @mmc_signal_sdio_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
