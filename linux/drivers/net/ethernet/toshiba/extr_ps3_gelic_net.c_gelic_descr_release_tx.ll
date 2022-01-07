; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_descr_release_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_descr_release_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_card = type { i32 }
%struct.gelic_descr = type { %struct.sk_buff*, i64, i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { i32 }

@GELIC_DESCR_TX_TAIL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GELIC_DESCR_DMA_NOT_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gelic_card*, %struct.gelic_descr*)* @gelic_descr_release_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_descr_release_tx(%struct.gelic_card* %0, %struct.gelic_descr* %1) #0 {
  %3 = alloca %struct.gelic_card*, align 8
  %4 = alloca %struct.gelic_descr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.gelic_card* %0, %struct.gelic_card** %3, align 8
  store %struct.gelic_descr* %1, %struct.gelic_descr** %4, align 8
  %6 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %7 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %6, i32 0, i32 0
  %8 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %8, %struct.sk_buff** %5, align 8
  %9 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %10 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @be32_to_cpu(i64 %11)
  %13 = load i32, i32* @GELIC_DESCR_TX_TAIL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %20 = call i32 @ctodev(%struct.gelic_card* %19)
  %21 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %22 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @be32_to_cpu(i64 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_unmap_single(i32 %20, i32 %24, i32 %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %30)
  %32 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %33 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  %34 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %35 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %37 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %39 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %41 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %43 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %45 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %47 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %46, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %47, align 8
  %48 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %49 = load i32, i32* @GELIC_DESCR_DMA_NOT_IN_USE, align 4
  %50 = call i32 @gelic_descr_set_status(%struct.gelic_descr* %48, i32 %49)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @ctodev(%struct.gelic_card*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @gelic_descr_set_status(%struct.gelic_descr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
