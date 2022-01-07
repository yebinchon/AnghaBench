; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_dnld_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_dnld_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i32 }
%struct.mwifiex_fw_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, %struct.mwifiex_fw_image*)* @mwifiex_sdio_dnld_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_sdio_dnld_fw(%struct.mwifiex_adapter* %0, %struct.mwifiex_fw_image* %1) #0 {
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.mwifiex_fw_image*, align 8
  %5 = alloca %struct.sdio_mmc_card*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store %struct.mwifiex_fw_image* %1, %struct.mwifiex_fw_image** %4, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 0
  %9 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %8, align 8
  store %struct.sdio_mmc_card* %9, %struct.sdio_mmc_card** %5, align 8
  %10 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %11 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sdio_claim_host(i32 %12)
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %15 = load %struct.mwifiex_fw_image*, %struct.mwifiex_fw_image** %4, align 8
  %16 = call i32 @mwifiex_dnld_fw(%struct.mwifiex_adapter* %14, %struct.mwifiex_fw_image* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %18 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sdio_release_host(i32 %19)
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @mwifiex_dnld_fw(%struct.mwifiex_adapter*, %struct.mwifiex_fw_image*) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
