; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_set_rx_skb_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_set_rx_skb_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@BNXT_MAX_PAGE_MODE_MTU = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@BNXT_FLAG_AGG_RINGS = common dso_local global i32 0, align 4
@BNXT_FLAG_NO_AGG_RINGS = common dso_local global i32 0, align 4
@BNXT_FLAG_RX_PAGE_MODE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@bnxt_rx_page_skb = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@bnxt_rx_skb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_set_rx_skb_mode(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %2
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BNXT_MAX_PAGE_MODE_MTU, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %8
  %20 = load i32, i32* @u16, align 4
  %21 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @BNXT_MAX_PAGE_MODE_MTU, align 8
  %25 = call i32 @min_t(i32 %20, i32 %23, i64 %24)
  %26 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 8
  %30 = load i32, i32* @BNXT_FLAG_AGG_RINGS, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %33 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @BNXT_FLAG_NO_AGG_RINGS, align 4
  %37 = load i32, i32* @BNXT_FLAG_RX_PAGE_MODE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %40 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %44 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %45 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @bnxt_rx_page_skb, align 4
  %47 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %48 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %50 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = call i32 @netdev_update_features(%struct.TYPE_2__* %51)
  br label %73

53:                                               ; preds = %2
  %54 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %55 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 8
  %61 = load i32, i32* @BNXT_FLAG_RX_PAGE_MODE, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %64 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %68 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %69 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @bnxt_rx_skb, align 4
  %71 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %72 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %53, %19
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @min_t(i32, i32, i64) #1

declare dso_local i32 @netdev_update_features(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
