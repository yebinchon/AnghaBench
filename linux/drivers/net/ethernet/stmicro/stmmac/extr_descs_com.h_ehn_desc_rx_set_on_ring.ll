; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_descs_com.h_ehn_desc_rx_set_on_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_descs_com.h_ehn_desc_rx_set_on_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32 }

@BUF_SIZE_16KiB = common dso_local global i32 0, align 4
@BUF_SIZE_8KiB = common dso_local global i32 0, align 4
@ERDES1_BUFFER2_SIZE_SHIFT = common dso_local global i32 0, align 4
@ERDES1_BUFFER2_SIZE_MASK = common dso_local global i32 0, align 4
@ERDES1_END_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32, i32)* @ehn_desc_rx_set_on_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehn_desc_rx_set_on_ring(%struct.dma_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dma_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dma_desc* %0, %struct.dma_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BUF_SIZE_16KiB, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load i32, i32* @BUF_SIZE_8KiB, align 4
  %12 = load i32, i32* @ERDES1_BUFFER2_SIZE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* @ERDES1_BUFFER2_SIZE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @cpu_to_le32(i32 %15)
  %17 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %18 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %10, %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @ERDES1_END_RING, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %28 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
