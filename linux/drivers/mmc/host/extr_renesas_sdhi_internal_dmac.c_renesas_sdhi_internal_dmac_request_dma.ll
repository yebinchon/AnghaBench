; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_internal_dmac.c_renesas_sdhi_internal_dmac_request_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_internal_dmac.c_renesas_sdhi_internal_dmac_request_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i8*, i8* }
%struct.tmio_mmc_data = type { i32 }
%struct.renesas_sdhi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DM_CM_INFO1_MASK = common dso_local global i32 0, align 4
@INFO1_MASK_CLEAR = common dso_local global i32 0, align 4
@DM_CM_INFO2_MASK = common dso_local global i32 0, align 4
@INFO2_MASK_CLEAR = common dso_local global i32 0, align 4
@renesas_sdhi_internal_dmac_complete_tasklet_fn = common dso_local global i32 0, align 4
@renesas_sdhi_internal_dmac_issue_tasklet_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, %struct.tmio_mmc_data*)* @renesas_sdhi_internal_dmac_request_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_internal_dmac_request_dma(%struct.tmio_mmc_host* %0, %struct.tmio_mmc_data* %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.tmio_mmc_data*, align 8
  %5 = alloca %struct.renesas_sdhi*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store %struct.tmio_mmc_data* %1, %struct.tmio_mmc_data** %4, align 8
  %6 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %7 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %6)
  store %struct.renesas_sdhi* %7, %struct.renesas_sdhi** %5, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %9 = load i32, i32* @DM_CM_INFO1_MASK, align 4
  %10 = load i32, i32* @INFO1_MASK_CLEAR, align 4
  %11 = call i32 @renesas_sdhi_internal_dmac_dm_write(%struct.tmio_mmc_host* %8, i32 %9, i32 %10)
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %13 = load i32, i32* @DM_CM_INFO2_MASK, align 4
  %14 = load i32, i32* @INFO2_MASK_CLEAR, align 4
  %15 = call i32 @renesas_sdhi_internal_dmac_dm_write(%struct.tmio_mmc_host* %12, i32 %13, i32 %14)
  %16 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %16, i32 0, i32 1
  store i8* inttoptr (i64 3735928495 to i8*), i8** %17, align 8
  %18 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %18, i32 0, i32 2
  store i8* inttoptr (i64 3735928495 to i8*), i8** %19, align 8
  %20 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %5, align 8
  %21 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* @renesas_sdhi_internal_dmac_complete_tasklet_fn, align 4
  %24 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %25 = ptrtoint %struct.tmio_mmc_host* %24 to i64
  %26 = call i32 @tasklet_init(i32* %22, i32 %23, i64 %25)
  %27 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %27, i32 0, i32 0
  %29 = load i32, i32* @renesas_sdhi_internal_dmac_issue_tasklet_fn, align 4
  %30 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %31 = ptrtoint %struct.tmio_mmc_host* %30 to i64
  %32 = call i32 @tasklet_init(i32* %28, i32 %29, i64 %31)
  ret void
}

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @renesas_sdhi_internal_dmac_dm_write(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
