; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_internal_dmac.c_renesas_sdhi_internal_dmac_enable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_internal_dmac.c_renesas_sdhi_internal_dmac_enable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i32 }
%struct.renesas_sdhi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.tmio_mmc_host*, i32)* }

@DM_CM_INFO1 = common dso_local global i32 0, align 4
@INFO1_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, i32)* @renesas_sdhi_internal_dmac_enable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_internal_dmac_enable_dma(%struct.tmio_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.renesas_sdhi*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %7 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %6)
  store %struct.renesas_sdhi* %7, %struct.renesas_sdhi** %5, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %40

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %23 = load i32, i32* @DM_CM_INFO1, align 4
  %24 = load i32, i32* @INFO1_CLEAR, align 4
  %25 = call i32 @renesas_sdhi_internal_dmac_dm_write(%struct.tmio_mmc_host* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %18
  %27 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %5, align 8
  %28 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.tmio_mmc_host*, i32)*, i32 (%struct.tmio_mmc_host*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.tmio_mmc_host*, i32)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %5, align 8
  %34 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.tmio_mmc_host*, i32)*, i32 (%struct.tmio_mmc_host*, i32)** %35, align 8
  %37 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 %36(%struct.tmio_mmc_host* %37, i32 %38)
  br label %40

40:                                               ; preds = %17, %32, %26
  ret void
}

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @renesas_sdhi_internal_dmac_dm_write(%struct.tmio_mmc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
