; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i32, i32)* @mwifiex_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_write_reg(%struct.mwifiex_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdio_mmc_card*, align 8
  %8 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 0
  %11 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %10, align 8
  store %struct.sdio_mmc_card* %11, %struct.sdio_mmc_card** %7, align 8
  %12 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %13 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sdio_claim_host(i32 %14)
  %16 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %17 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mwifiex_write_reg_locked(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %23 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sdio_release_host(i32 %24)
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @mwifiex_write_reg_locked(i32, i32, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
