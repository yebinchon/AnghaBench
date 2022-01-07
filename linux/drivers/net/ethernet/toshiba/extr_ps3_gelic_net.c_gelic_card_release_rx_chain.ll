; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_release_rx_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_release_rx_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gelic_descr* }
%struct.gelic_descr = type { %struct.gelic_descr*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GELIC_DESCR_DMA_NOT_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gelic_card*)* @gelic_card_release_rx_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_card_release_rx_chain(%struct.gelic_card* %0) #0 {
  %2 = alloca %struct.gelic_card*, align 8
  %3 = alloca %struct.gelic_descr*, align 8
  store %struct.gelic_card* %0, %struct.gelic_card** %2, align 8
  %4 = load %struct.gelic_card*, %struct.gelic_card** %2, align 8
  %5 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.gelic_descr*, %struct.gelic_descr** %6, align 8
  store %struct.gelic_descr* %7, %struct.gelic_descr** %3, align 8
  br label %8

8:                                                ; preds = %42, %1
  %9 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %10 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.gelic_card*, %struct.gelic_card** %2, align 8
  %15 = call i32 @ctodev(%struct.gelic_card* %14)
  %16 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %17 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @be32_to_cpu(i64 %18)
  %20 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %21 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = call i32 @dma_unmap_single(i32 %15, i32 %19, i32 %24, i32 %25)
  %27 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %28 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %30 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @dev_kfree_skb_any(%struct.TYPE_4__* %31)
  %33 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %34 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %33, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %34, align 8
  %35 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %36 = load i32, i32* @GELIC_DESCR_DMA_NOT_IN_USE, align 4
  %37 = call i32 @gelic_descr_set_status(%struct.gelic_descr* %35, i32 %36)
  br label %38

38:                                               ; preds = %13, %8
  %39 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %40 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %39, i32 0, i32 0
  %41 = load %struct.gelic_descr*, %struct.gelic_descr** %40, align 8
  store %struct.gelic_descr* %41, %struct.gelic_descr** %3, align 8
  br label %42

42:                                               ; preds = %38
  %43 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %44 = load %struct.gelic_card*, %struct.gelic_card** %2, align 8
  %45 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.gelic_descr*, %struct.gelic_descr** %46, align 8
  %48 = icmp ne %struct.gelic_descr* %43, %47
  br i1 %48, label %8, label %49

49:                                               ; preds = %42
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @ctodev(%struct.gelic_card*) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_4__*) #1

declare dso_local i32 @gelic_descr_set_status(%struct.gelic_descr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
