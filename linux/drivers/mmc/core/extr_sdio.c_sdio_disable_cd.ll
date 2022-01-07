; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_disable_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_disable_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }

@SDIO_CCCR_IF = common dso_local global i32 0, align 4
@SDIO_BUS_CD_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @sdio_disable_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_disable_cd(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %7 = call i32 @mmc_card_disable_cd(%struct.mmc_card* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %12 = load i32, i32* @SDIO_CCCR_IF, align 4
  %13 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %11, i32 0, i32 0, i32 %12, i32 0, i32* %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %10
  %19 = load i32, i32* @SDIO_BUS_CD_DISABLE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %23 = load i32, i32* @SDIO_CCCR_IF, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %22, i32 1, i32 0, i32 %23, i32 %24, i32* null)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %16, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @mmc_card_disable_cd(%struct.mmc_card*) #1

declare dso_local i32 @mmc_io_rw_direct(%struct.mmc_card*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
