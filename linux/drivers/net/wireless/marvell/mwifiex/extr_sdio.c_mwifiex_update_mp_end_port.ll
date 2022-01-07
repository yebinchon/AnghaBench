; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_update_mp_end_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_update_mp_end_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i32, i32, i32, i64, %struct.mwifiex_sdio_card_reg* }
%struct.mwifiex_sdio_card_reg = type { i32, i64 }

@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cmd: mp_end_port %d, data port mask 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*, i32)* @mwifiex_update_mp_end_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_update_mp_end_port(%struct.mwifiex_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdio_mmc_card*, align 8
  %6 = alloca %struct.mwifiex_sdio_card_reg*, align 8
  %7 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %9, align 8
  store %struct.sdio_mmc_card* %10, %struct.sdio_mmc_card** %5, align 8
  %11 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %12 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %11, i32 0, i32 4
  %13 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %12, align 8
  store %struct.mwifiex_sdio_card_reg* %13, %struct.mwifiex_sdio_card_reg** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %16 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %6, align 8
  %18 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %21 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %6, align 8
  %23 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %30 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %33 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  %36 = icmp sle i32 %28, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %27
  %38 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %39 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %40, %41
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %46 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %27

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %6, align 8
  %55 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %58 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %60 = load i32, i32* @CMD, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %63 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %59, i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  ret void
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
