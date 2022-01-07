; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_rx_push_shared_rss_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_rx_push_shared_rss_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32*)* @efx_ef10_rx_push_shared_rss_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_rx_push_shared_rss_config(%struct.efx_nic* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.efx_ef10_nic_data*, align 8
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 1
  %10 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %9, align 8
  store %struct.efx_ef10_nic_data* %10, %struct.efx_ef10_nic_data** %6, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 0
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @efx_ef10_alloc_rss_context(%struct.efx_nic* %11, i32 0, i32* %13, i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %22 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %24 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %25 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %24, i32 0, i32 0
  %26 = call i32 @efx_set_default_rx_indir_table(%struct.efx_nic* %23, i32* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @efx_ef10_alloc_rss_context(%struct.efx_nic*, i32, i32*, i32*) #1

declare dso_local i32 @efx_set_default_rx_indir_table(%struct.efx_nic*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
