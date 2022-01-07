; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_poll_card_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_poll_card_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_POLL_TRIES = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"poll card status failed, tries = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i32)* @mwifiex_sdio_poll_card_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_sdio_poll_card_status(%struct.mwifiex_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdio_mmc_card*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 0
  %11 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %10, align 8
  store %struct.sdio_mmc_card* %11, %struct.sdio_mmc_card** %6, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %36, %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @MAX_POLL_TRIES, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %18 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %19 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %17, i32 %22, i32* %8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %39

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %44

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = call i32 @usleep_range(i32 10, i32 20)
  br label %36

36:                                               ; preds = %34
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %12

39:                                               ; preds = %25, %12
  %40 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %40, i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %42)
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %32
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
