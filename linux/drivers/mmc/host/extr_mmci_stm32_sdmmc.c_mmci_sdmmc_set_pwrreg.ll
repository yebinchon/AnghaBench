; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_mmci_sdmmc_set_pwrreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_mmci_sdmmc_set_pwrreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i32, i64, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i64 }

@MMC_POWER_OFF = common dso_local global i64 0, align 8
@MCI_STM32_PWR_CYC = common dso_local global i32 0, align 4
@MMC_POWER_ON = common dso_local global i64 0, align 8
@MCI_IRQENABLE = common dso_local global i32 0, align 4
@MMCIMASK0 = common dso_local global i64 0, align 8
@MCI_PWR_OFF = common dso_local global i32 0, align 4
@MCI_PWR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmci_host*, i32)* @mmci_sdmmc_set_pwrreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmci_sdmmc_set_pwrreg(%struct.mmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_ios, align 8
  store %struct.mmci_host* %0, %struct.mmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = bitcast %struct.mmc_ios* %5 to i8*
  %11 = bitcast %struct.mmc_ios* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %13 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MMC_POWER_OFF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %21 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @reset_control_assert(i32 %22)
  %24 = call i32 @udelay(i32 2)
  %25 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %26 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @reset_control_deassert(i32 %27)
  %29 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %30 = load i32, i32* @MCI_STM32_PWR_CYC, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @mmci_write_pwrreg(%struct.mmci_host* %29, i32 %32)
  br label %65

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MMC_POWER_ON, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = load i32, i32* @MCI_IRQENABLE, align 4
  %41 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %40, %45
  %47 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %48 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MMCIMASK0, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %54 = load i32, i32* @MCI_PWR_OFF, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @mmci_write_pwrreg(%struct.mmci_host* %53, i32 %56)
  %58 = call i32 @mdelay(i32 1)
  %59 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %60 = load i32, i32* @MCI_PWR_ON, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @mmci_write_pwrreg(%struct.mmci_host* %59, i32 %62)
  br label %64

64:                                               ; preds = %39, %34
  br label %65

65:                                               ; preds = %64, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reset_control_assert(i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @reset_control_deassert(i32) #2

declare dso_local i32 @mmci_write_pwrreg(%struct.mmci_host*, i32) #2

declare dso_local i32 @writel(i32, i64) #2

declare dso_local i32 @mdelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
