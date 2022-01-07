; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_rx_pull_rss_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_rx_pull_rss_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FR_CZ_RX_RSS_IPV6_REG1 = common dso_local global i32 0, align 4
@FR_CZ_RX_RSS_IPV6_REG2 = common dso_local global i32 0, align 4
@FR_CZ_RX_RSS_IPV6_REG3 = common dso_local global i32 0, align 4
@FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @siena_rx_pull_rss_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siena_rx_pull_rss_config(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = load i32, i32* @FR_CZ_RX_RSS_IPV6_REG1, align 4
  %6 = call i32 @efx_reado(%struct.efx_nic* %4, i32* %3, i32 %5)
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @memcpy(i64 %10, i32* %3, i32 4)
  %12 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %13 = load i32, i32* @FR_CZ_RX_RSS_IPV6_REG2, align 4
  %14 = call i32 @efx_reado(%struct.efx_nic* %12, i32* %3, i32 %13)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 4
  %20 = call i32 @memcpy(i64 %19, i32* %3, i32 4)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %22 = load i32, i32* @FR_CZ_RX_RSS_IPV6_REG3, align 4
  %23 = call i32 @efx_reado(%struct.efx_nic* %21, i32* %3, i32 %22)
  %24 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %25 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 8
  %29 = load i32, i32* @FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH, align 4
  %30 = sdiv i32 %29, 8
  %31 = call i32 @memcpy(i64 %28, i32* %3, i32 %30)
  %32 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %33 = call i32 @efx_farch_rx_pull_indir_table(%struct.efx_nic* %32)
  ret i32 0
}

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @efx_farch_rx_pull_indir_table(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
