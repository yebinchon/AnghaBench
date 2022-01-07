; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_tx_desc_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_tx_desc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.wil_tx_desc = type { %struct.vring_tx_desc }
%struct.vring_tx_desc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i64, i32 }

@DMA_CFG_DESC_TX_0_QID_POS = common dso_local global i32 0, align 4
@MAC_CFG_DESC_TX_2_SNAP_HDR_INSERTION_EN_POS = common dso_local global i32 0, align 4
@MAC_CFG_DESC_TX_2_L2_TRANSLATION_TYPE_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.wil_tx_desc*, i32, i64, i32)* @wil_tx_desc_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_tx_desc_map(%union.wil_tx_desc* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %union.wil_tx_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vring_tx_desc*, align 8
  store %union.wil_tx_desc* %0, %union.wil_tx_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %union.wil_tx_desc*, %union.wil_tx_desc** %5, align 8
  %11 = bitcast %union.wil_tx_desc* %10 to %struct.vring_tx_desc*
  store %struct.vring_tx_desc* %11, %struct.vring_tx_desc** %9, align 8
  %12 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %13 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 6
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @wil_desc_addr_set(i32* %14, i32 %15)
  %17 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %18 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %21 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %24 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %27 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %33 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @DMA_CFG_DESC_TX_0_QID_POS, align 4
  %37 = shl i32 %35, %36
  %38 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %39 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %42 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %47 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %52 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 0, i32* %55, align 4
  %56 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %57 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @MAC_CFG_DESC_TX_2_SNAP_HDR_INSERTION_EN_POS, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load i32, i32* @MAC_CFG_DESC_TX_2_L2_TRANSLATION_TYPE_POS, align 4
  %62 = shl i32 1, %61
  %63 = or i32 %60, %62
  %64 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %65 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %63, i32* %68, align 4
  ret i32 0
}

declare dso_local i32 @wil_desc_addr_set(i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
