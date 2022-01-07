; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CTL_RESET_SD = common dso_local global i32 0, align 4
@TMIO_MMC_SDIO_IRQ = common dso_local global i32 0, align 4
@CTL_SDIO_IRQ_MASK = common dso_local global i32 0, align 4
@CTL_TRANSACTION_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @tmio_mmc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_reset(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %3 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %4 = load i32, i32* @CTL_RESET_SD, align 4
  %5 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %3, i32 %4, i32 0)
  %6 = call i32 @usleep_range(i32 10000, i32 11000)
  %7 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %8 = load i32, i32* @CTL_RESET_SD, align 4
  %9 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %7, i32 %8, i32 1)
  %10 = call i32 @usleep_range(i32 10000, i32 11000)
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TMIO_MMC_SDIO_IRQ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %21 = load i32, i32* @CTL_SDIO_IRQ_MASK, align 4
  %22 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %23 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %20, i32 %21, i32 %24)
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %27 = load i32, i32* @CTL_TRANSACTION_CTL, align 4
  %28 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %26, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
