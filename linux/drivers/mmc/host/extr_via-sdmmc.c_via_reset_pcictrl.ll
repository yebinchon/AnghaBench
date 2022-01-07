; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_reset_pcictrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_reset_pcictrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_crdr_mmc_host = type { i64, i32, i64 }

@VIA_CRDR_PCICLKGATT_PAD_PWRON = common dso_local global i32 0, align 4
@MMC_VDD_165_195 = common dso_local global i64 0, align 8
@VIA_CRDR_PCICLKGATT_3V3 = common dso_local global i32 0, align 4
@VIA_CRDR_PCICLKGATT = common dso_local global i64 0, align 8
@VIA_CRDR_PCICLKGATT_SFTRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_crdr_mmc_host*)* @via_reset_pcictrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_reset_pcictrl(%struct.via_crdr_mmc_host* %0) #0 {
  %2 = alloca %struct.via_crdr_mmc_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.via_crdr_mmc_host* %0, %struct.via_crdr_mmc_host** %2, align 8
  %5 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %10 = call i32 @via_save_pcictrlreg(%struct.via_crdr_mmc_host* %9)
  %11 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %12 = call i32 @via_save_sdcreg(%struct.via_crdr_mmc_host* %11)
  %13 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %14 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %13, i32 0, i32 1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load i32, i32* @VIA_CRDR_PCICLKGATT_PAD_PWRON, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %19 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MMC_VDD_165_195, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @VIA_CRDR_PCICLKGATT_3V3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @VIA_CRDR_PCICLKGATT_3V3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %34 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VIA_CRDR_PCICLKGATT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writeb(i32 %32, i64 %37)
  %39 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %40 = call i32 @via_pwron_sleep(%struct.via_crdr_mmc_host* %39)
  %41 = load i32, i32* @VIA_CRDR_PCICLKGATT_SFTRST, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %46 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VIA_CRDR_PCICLKGATT, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writeb(i32 %44, i64 %49)
  %51 = call i32 @msleep(i32 3)
  %52 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %53 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %52, i32 0, i32 1
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %57 = call i32 @via_restore_pcictrlreg(%struct.via_crdr_mmc_host* %56)
  %58 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %59 = call i32 @via_restore_sdcreg(%struct.via_crdr_mmc_host* %58)
  %60 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %61 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %60, i32 0, i32 1
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @via_save_pcictrlreg(%struct.via_crdr_mmc_host*) #1

declare dso_local i32 @via_save_sdcreg(%struct.via_crdr_mmc_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @via_pwron_sleep(%struct.via_crdr_mmc_host*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @via_restore_pcictrlreg(%struct.via_crdr_mmc_host*) #1

declare dso_local i32 @via_restore_sdcreg(%struct.via_crdr_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
