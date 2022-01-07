; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_start_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_start_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@freqs = common dso_local global i32* null, align 8
@MMC_POWER_UNDEFINED = common dso_local global i32 0, align 4
@MMC_CAP2_NO_PRESCAN_POWERUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_start_host(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %3 = load i32*, i32** @freqs, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @max(i32 %5, i32 %8)
  %10 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @MMC_POWER_UNDEFINED, align 4
  %15 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MMC_CAP2_NO_PRESCAN_POWERUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %1
  %25 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %26 = call i32 @mmc_claim_host(%struct.mmc_host* %25)
  %27 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %28 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %29 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mmc_power_up(%struct.mmc_host* %27, i32 %30)
  %32 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %33 = call i32 @mmc_release_host(%struct.mmc_host* %32)
  br label %34

34:                                               ; preds = %24, %1
  %35 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %36 = call i32 @mmc_gpiod_request_cd_irq(%struct.mmc_host* %35)
  %37 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %38 = call i32 @_mmc_detect_change(%struct.mmc_host* %37, i32 0, i32 0)
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_power_up(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_gpiod_request_cd_irq(%struct.mmc_host*) #1

declare dso_local i32 @_mmc_detect_change(%struct.mmc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
