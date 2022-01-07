; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_abort_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_abort_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i64, i32*, i64 }
%struct.mmc_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_data*)* @mmc_omap_abort_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_abort_xfer(%struct.mmc_omap_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %5 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %11 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %12 = call i32 @mmc_omap_release_dma(%struct.mmc_omap_host* %10, %struct.mmc_data* %11, i32 1)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %19 = call i32 @mmc_omap_send_abort(%struct.mmc_omap_host* %18, i32 10000)
  ret void
}

declare dso_local i32 @mmc_omap_release_dma(%struct.mmc_omap_host*, %struct.mmc_data*, i32) #1

declare dso_local i32 @mmc_omap_send_abort(%struct.mmc_omap_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
