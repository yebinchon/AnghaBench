; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_write16_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_write16_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TMIO_STAT_SCLKDIVEN = common dso_local global i32 0, align 4
@TMIO_MMC_HAVE_CBSY = common dso_local global i32 0, align 4
@TMIO_STAT_CMD_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*, i32)* @renesas_sdhi_write16_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_sdhi_write16_hook(%struct.tmio_mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmio_mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @TMIO_STAT_SCLKDIVEN, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %25 [
    i32 134, label %9
    i32 131, label %9
    i32 129, label %9
    i32 132, label %9
    i32 133, label %9
    i32 130, label %9
    i32 136, label %9
    i32 128, label %9
    i32 135, label %21
  ]

9:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TMIO_MMC_HAVE_CBSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* @TMIO_STAT_CMD_BUSY, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %9
  br label %21

21:                                               ; preds = %2, %20
  %22 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @renesas_sdhi_wait_idle(%struct.tmio_mmc_host* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @renesas_sdhi_wait_idle(%struct.tmio_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
