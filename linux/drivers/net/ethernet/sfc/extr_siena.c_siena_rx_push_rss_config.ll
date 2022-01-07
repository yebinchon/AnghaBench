; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_rx_push_rss_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_rx_push_rss_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@FR_BZ_RX_RSS_TKEY = common dso_local global i32 0, align 4
@FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH = common dso_local global i32 0, align 4
@FRF_CZ_RX_RSS_IPV6_TKEY_HI_LBN = common dso_local global i64 0, align 8
@FR_CZ_RX_RSS_IPV6_REG1 = common dso_local global i32 0, align 4
@FR_CZ_RX_RSS_IPV6_REG2 = common dso_local global i32 0, align 4
@FRF_CZ_RX_RSS_IPV6_THASH_ENABLE = common dso_local global i32 0, align 4
@FRF_CZ_RX_RSS_IPV6_IP_THASH_ENABLE = common dso_local global i32 0, align 4
@FR_CZ_RX_RSS_IPV6_REG3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, i32*, i32*)* @siena_rx_push_rss_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siena_rx_push_rss_config(%struct.efx_nic* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @memcpy(i32* %16, i32* %17, i32 4)
  br label %19

19:                                               ; preds = %12, %4
  %20 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @memcpy(i32* %9, i32* %23, i32 4)
  %25 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %26 = load i32, i32* @FR_BZ_RX_RSS_TKEY, align 4
  %27 = call i32 @efx_writeo(%struct.efx_nic* %25, i32* %9, i32 %26)
  %28 = load i32, i32* @FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH, align 4
  %29 = sdiv i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = add i64 8, %30
  %32 = icmp ult i64 8, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %19
  %34 = load i64, i64* @FRF_CZ_RX_RSS_IPV6_TKEY_HI_LBN, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %33, %19
  %37 = phi i1 [ true, %19 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUILD_BUG_ON(i32 %38)
  %40 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %41 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @memcpy(i32* %9, i32* %43, i32 4)
  %45 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %46 = load i32, i32* @FR_CZ_RX_RSS_IPV6_REG1, align 4
  %47 = call i32 @efx_writeo(%struct.efx_nic* %45, i32* %9, i32 %46)
  %48 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = call i32 @memcpy(i32* %9, i32* %52, i32 4)
  %54 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %55 = load i32, i32* @FR_CZ_RX_RSS_IPV6_REG2, align 4
  %56 = call i32 @efx_writeo(%struct.efx_nic* %54, i32* %9, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @FRF_CZ_RX_RSS_IPV6_THASH_ENABLE, align 4
  %59 = load i32, i32* @FRF_CZ_RX_RSS_IPV6_IP_THASH_ENABLE, align 4
  %60 = call i32 @EFX_POPULATE_OWORD_2(i32 %57, i32 %58, i32 1, i32 %59, i32 1)
  %61 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  %66 = load i32, i32* @FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH, align 4
  %67 = sdiv i32 %66, 8
  %68 = call i32 @memcpy(i32* %9, i32* %65, i32 %67)
  %69 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %70 = load i32, i32* @FR_CZ_RX_RSS_IPV6_REG3, align 4
  %71 = call i32 @efx_writeo(%struct.efx_nic* %69, i32* %9, i32 %70)
  %72 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %73 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @memcpy(i32* %75, i32* %76, i32 8)
  %78 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %79 = call i32 @efx_farch_rx_push_indir_table(%struct.efx_nic* %78)
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_farch_rx_push_indir_table(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
