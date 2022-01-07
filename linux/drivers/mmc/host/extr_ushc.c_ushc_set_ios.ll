; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i64, i32, i32 }
%struct.ushc_data = type { i32 }

@MMC_TIMING_SD_HS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @ushc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ushc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.ushc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.ushc_data* @mmc_priv(%struct.mmc_host* %6)
  store %struct.ushc_data* %7, %struct.ushc_data** %5, align 8
  %8 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %9 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ushc_set_power(%struct.ushc_data* %8, i32 %11)
  %13 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 1, %16
  %18 = call i32 @ushc_set_bus_width(%struct.ushc_data* %13, i32 %17)
  %19 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %20 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MMC_TIMING_SD_HS, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ushc_set_bus_freq(%struct.ushc_data* %19, i32 %22, i32 %28)
  ret void
}

declare dso_local %struct.ushc_data* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @ushc_set_power(%struct.ushc_data*, i32) #1

declare dso_local i32 @ushc_set_bus_width(%struct.ushc_data*, i32) #1

declare dso_local i32 @ushc_set_bus_freq(%struct.ushc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
