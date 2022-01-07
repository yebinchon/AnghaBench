; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_reset_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }

@IPW_ORD_STAT_RX_ERR_CRC = common dso_local global i32 0, align 4
@IPW_ORD_STAT_TX_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_reset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_reset_stats(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  store i32 4, i32* %3, align 4
  %4 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %4, i32 0, i32 13
  store i64 0, i64* %5, align 8
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %6, i32 0, i32 12
  %8 = call i32 @average_init(i32* %7)
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %9, i32 0, i32 0
  store i32 -60, i32* %10, align 8
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %11, i32 0, i32 1
  store i32 171, i32* %12, align 4
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %13, i32 0, i32 11
  store i64 0, i64* %14, align 8
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 10
  store i64 0, i64* %16, align 8
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %18 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %17, i32 0, i32 9
  store i64 0, i64* %18, align 8
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %20 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %19, i32 0, i32 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %22 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %24 = load i32, i32* @IPW_ORD_STAT_RX_ERR_CRC, align 4
  %25 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %26 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %25, i32 0, i32 7
  %27 = call i32 @ipw_get_ordinal(%struct.ipw_priv* %23, i32 %24, i64* %26, i32* %3)
  %28 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %29 = load i32, i32* @IPW_ORD_STAT_TX_FAILURE, align 4
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 6
  %32 = call i32 @ipw_get_ordinal(%struct.ipw_priv* %28, i32 %29, i64* %31, i32* %3)
  %33 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %34 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %36 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %38 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %40 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  ret void
}

declare dso_local i32 @average_init(i32*) #1

declare dso_local i32 @ipw_get_ordinal(%struct.ipw_priv*, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
