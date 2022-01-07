; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_describe_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_describe_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@efx_ptp_stat_desc = common dso_local global i32 0, align 4
@PTP_STAT_COUNT = common dso_local global i32 0, align 4
@efx_ptp_stat_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efx_ptp_describe_stats(%struct.efx_nic* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @efx_ptp_stat_desc, align 4
  %13 = load i32, i32* @PTP_STAT_COUNT, align 4
  %14 = load i32, i32* @efx_ptp_stat_mask, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @efx_nic_describe_stats(i32 %12, i32 %13, i32 %14, i32* %15)
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %11, %10
  %18 = load i64, i64* %3, align 8
  ret i64 %18
}

declare dso_local i64 @efx_nic_describe_stats(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
