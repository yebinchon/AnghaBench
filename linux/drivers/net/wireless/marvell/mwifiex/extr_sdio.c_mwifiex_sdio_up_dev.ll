; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_up_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_up_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MWIFIEX_SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_sdio_up_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_sdio_up_dev(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.sdio_mmc_card*, align 8
  %4 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %5 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %5, i32 0, i32 1
  %7 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  store %struct.sdio_mmc_card* %7, %struct.sdio_mmc_card** %3, align 8
  %8 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %9 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @sdio_claim_host(i32 %10)
  %12 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %13 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sdio_enable_func(i32 %14)
  %16 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %17 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MWIFIEX_SDIO_BLOCK_SIZE, align 4
  %20 = call i32 @sdio_set_block_size(i32 %18, i32 %19)
  %21 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %22 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sdio_release_host(i32 %23)
  %25 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %26 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %31 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %32 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %30, i32 %35, i32* %4)
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %38 = call i32 @mwifiex_init_sdio_ioport(%struct.mwifiex_adapter* %37)
  ret void
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_enable_func(i32) #1

declare dso_local i32 @sdio_set_block_size(i32, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

declare dso_local i32 @mwifiex_init_sdio_ioport(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
