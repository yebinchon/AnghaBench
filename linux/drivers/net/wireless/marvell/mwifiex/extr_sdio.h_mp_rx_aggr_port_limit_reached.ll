; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.h_mp_rx_aggr_port_limit_reached.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.h_mp_rx_aggr_port_limit_reached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_mmc_card = type { i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_mmc_card*)* @mp_rx_aggr_port_limit_reached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_rx_aggr_port_limit_reached(%struct.sdio_mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdio_mmc_card*, align 8
  %4 = alloca i32, align 4
  store %struct.sdio_mmc_card* %0, %struct.sdio_mmc_card** %3, align 8
  %5 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %6 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %9 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  %14 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %15 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %20 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %25 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %29 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %32 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %30, %34
  %36 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %37 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %66

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %46 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %66

50:                                               ; preds = %44
  %51 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %52 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %55 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %53, %57
  %59 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %60 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 1
  %63 = icmp sge i32 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %66

65:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %64, %49, %42
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
