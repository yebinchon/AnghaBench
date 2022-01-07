; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_init_rx_auto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_init_rx_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64 }
%struct.efx_farch_filter_spec = type { i32, i64, i32 }

@EFX_FILTER_PRI_AUTO = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_RSS = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_SCATTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.efx_farch_filter_spec*)* @efx_farch_filter_init_rx_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_farch_filter_init_rx_auto(%struct.efx_nic* %0, %struct.efx_farch_filter_spec* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_farch_filter_spec*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.efx_farch_filter_spec* %1, %struct.efx_farch_filter_spec** %4, align 8
  %5 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %6 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %4, align 8
  %7 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @EFX_FILTER_FLAG_RX, align 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = call i64 @efx_rss_enabled(%struct.efx_nic* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  %17 = or i32 %8, %16
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @EFX_FILTER_FLAG_RX_SCATTER, align 4
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = or i32 %17, %26
  %28 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %4, align 8
  %29 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %4, align 8
  %31 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  ret void
}

declare dso_local i64 @efx_rss_enabled(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
