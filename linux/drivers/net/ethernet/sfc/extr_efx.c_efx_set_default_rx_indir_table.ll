; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_set_default_rx_indir_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_set_default_rx_indir_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_rss_context = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_set_default_rx_indir_table(%struct.efx_nic* %0, %struct.efx_rss_context* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_rss_context*, align 8
  %5 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.efx_rss_context* %1, %struct.efx_rss_context** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.efx_rss_context*, %struct.efx_rss_context** %4, align 8
  %9 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @ARRAY_SIZE(i32* %10)
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %6
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ethtool_rxfh_indir_default(i64 %14, i32 %17)
  %19 = load %struct.efx_rss_context*, %struct.efx_rss_context** %4, align 8
  %20 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %18, i32* %23, align 4
  br label %24

24:                                               ; preds = %13
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %6

27:                                               ; preds = %6
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ethtool_rxfh_indir_default(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
