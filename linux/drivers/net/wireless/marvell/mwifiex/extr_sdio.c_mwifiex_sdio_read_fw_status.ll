; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_read_fw_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_read_fw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { %struct.mwifiex_sdio_card_reg* }
%struct.mwifiex_sdio_card_reg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i64*)* @mwifiex_sdio_read_fw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_sdio_read_fw_status(%struct.mwifiex_adapter* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.sdio_mmc_card*, align 8
  %7 = alloca %struct.mwifiex_sdio_card_reg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 0
  %12 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %11, align 8
  store %struct.sdio_mmc_card* %12, %struct.sdio_mmc_card** %6, align 8
  %13 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %14 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %13, i32 0, i32 0
  %15 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %14, align 8
  store %struct.mwifiex_sdio_card_reg* %15, %struct.mwifiex_sdio_card_reg** %7, align 8
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %17 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %7, align 8
  %18 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %16, i32 %19, i32* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

23:                                               ; preds = %2
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %25 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %7, align 8
  %26 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %24, i32 %27, i32* %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %38

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %30, %22
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
