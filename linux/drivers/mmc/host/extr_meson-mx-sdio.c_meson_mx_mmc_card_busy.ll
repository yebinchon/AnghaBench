; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_card_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_card_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.meson_mx_mmc_host = type { i64 }

@MESON_MX_SDIO_IRQC = common dso_local global i64 0, align 8
@MESON_MX_SDIO_IRQC_FORCE_DATA_DAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @meson_mx_mmc_card_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mx_mmc_card_busy(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.meson_mx_mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %6 = call %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host* %5)
  store %struct.meson_mx_mmc_host* %6, %struct.meson_mx_mmc_host** %3, align 8
  %7 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MESON_MX_SDIO_IRQC, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MESON_MX_SDIO_IRQC_FORCE_DATA_DAT_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
