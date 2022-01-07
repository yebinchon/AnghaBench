; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mmc_sdio_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sdio_sw_reset(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %3 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @mmc_set_clock(%struct.mmc_host* %3, i32 %6)
  %8 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %9 = call i32 @sdio_reset(%struct.mmc_host* %8)
  %10 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %11 = call i32 @mmc_go_idle(%struct.mmc_host* %10)
  %12 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %13 = call i32 @mmc_set_initial_state(%struct.mmc_host* %12)
  %14 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %15 = call i32 @mmc_set_initial_signal_voltage(%struct.mmc_host* %14)
  %16 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %17 = call i32 @mmc_sdio_reinit_card(%struct.mmc_host* %16)
  ret i32 %17
}

declare dso_local i32 @mmc_set_clock(%struct.mmc_host*, i32) #1

declare dso_local i32 @sdio_reset(%struct.mmc_host*) #1

declare dso_local i32 @mmc_go_idle(%struct.mmc_host*) #1

declare dso_local i32 @mmc_set_initial_state(%struct.mmc_host*) #1

declare dso_local i32 @mmc_set_initial_signal_voltage(%struct.mmc_host*) #1

declare dso_local i32 @mmc_sdio_reinit_card(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
