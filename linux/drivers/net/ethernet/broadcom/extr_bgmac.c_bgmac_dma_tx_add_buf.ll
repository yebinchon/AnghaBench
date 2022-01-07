; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_add_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_add_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32 }
%struct.bgmac_dma_ring = type { %struct.bgmac_dma_desc*, %struct.bgmac_slot_info* }
%struct.bgmac_dma_desc = type { i8*, i8*, i8*, i8* }
%struct.bgmac_slot_info = type { i32 }

@BGMAC_TX_RING_SLOTS = common dso_local global i32 0, align 4
@BGMAC_DESC_CTL0_EOT = common dso_local global i32 0, align 4
@BGMAC_DESC_CTL1_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*, %struct.bgmac_dma_ring*, i32, i32, i32)* @bgmac_dma_tx_add_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_dma_tx_add_buf(%struct.bgmac* %0, %struct.bgmac_dma_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bgmac*, align 8
  %7 = alloca %struct.bgmac_dma_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bgmac_slot_info*, align 8
  %12 = alloca %struct.bgmac_dma_desc*, align 8
  %13 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %6, align 8
  store %struct.bgmac_dma_ring* %1, %struct.bgmac_dma_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BGMAC_TX_RING_SLOTS, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @BGMAC_DESC_CTL0_EOT, align 4
  %20 = load i32, i32* %10, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %18, %5
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @BGMAC_DESC_CTL1_LEN, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %7, align 8
  %27 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %26, i32 0, i32 1
  %28 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %28, i64 %30
  store %struct.bgmac_slot_info* %31, %struct.bgmac_slot_info** %11, align 8
  %32 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %7, align 8
  %33 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %32, i32 0, i32 0
  %34 = load %struct.bgmac_dma_desc*, %struct.bgmac_dma_desc** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bgmac_dma_desc, %struct.bgmac_dma_desc* %34, i64 %36
  store %struct.bgmac_dma_desc* %37, %struct.bgmac_dma_desc** %12, align 8
  %38 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %11, align 8
  %39 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @lower_32_bits(i32 %40)
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %struct.bgmac_dma_desc*, %struct.bgmac_dma_desc** %12, align 8
  %44 = getelementptr inbounds %struct.bgmac_dma_desc, %struct.bgmac_dma_desc* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %11, align 8
  %46 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @upper_32_bits(i32 %47)
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.bgmac_dma_desc*, %struct.bgmac_dma_desc** %12, align 8
  %51 = getelementptr inbounds %struct.bgmac_dma_desc, %struct.bgmac_dma_desc* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.bgmac_dma_desc*, %struct.bgmac_dma_desc** %12, align 8
  %55 = getelementptr inbounds %struct.bgmac_dma_desc, %struct.bgmac_dma_desc* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.bgmac_dma_desc*, %struct.bgmac_dma_desc** %12, align 8
  %59 = getelementptr inbounds %struct.bgmac_dma_desc, %struct.bgmac_dma_desc* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
