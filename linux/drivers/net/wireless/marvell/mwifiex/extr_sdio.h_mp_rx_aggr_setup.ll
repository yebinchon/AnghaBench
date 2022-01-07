; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.h_mp_rx_aggr_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.h_mp_rx_aggr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_mmc_card = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i64*, i32**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_mmc_card*, i64, i32)* @mp_rx_aggr_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_rx_aggr_setup(%struct.sdio_mmc_card* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sdio_mmc_card*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sdio_mmc_card* %0, %struct.sdio_mmc_card** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %9 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %7
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 8
  %15 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %16 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %23 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %27 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 1, %31
  %33 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %34 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 8
  br label %69

38:                                               ; preds = %25
  %39 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %40 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %47 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 1, %49
  %51 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %52 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 8
  br label %68

56:                                               ; preds = %38
  %57 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %58 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = shl i32 1, %61
  %63 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %64 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %56, %45
  br label %69

69:                                               ; preds = %68, %30
  %70 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %71 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i32**, i32*** %72, align 8
  %74 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %75 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %73, i64 %78
  store i32* null, i32** %79, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %82 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %86 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %84, i64 %89
  store i64 %80, i64* %90, align 8
  %91 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %92 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
