; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_descs_com.h_ndesc_rx_set_on_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_descs_com.h_ndesc_rx_set_on_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32 }

@BUF_SIZE_2KiB = common dso_local global i32 0, align 4
@RDES1_BUFFER2_SIZE_SHIFT = common dso_local global i32 0, align 4
@RDES1_BUFFER2_SIZE_MASK = common dso_local global i32 0, align 4
@RDES1_END_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32, i32)* @ndesc_rx_set_on_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndesc_rx_set_on_ring(%struct.dma_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dma_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dma_desc* %0, %struct.dma_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BUF_SIZE_2KiB, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BUF_SIZE_2KiB, align 4
  %14 = sub nsw i32 %12, %13
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @BUF_SIZE_2KiB, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @min(i32 %15, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @RDES1_BUFFER2_SIZE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* @RDES1_BUFFER2_SIZE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %26 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %11, %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* @RDES1_END_RING, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %36 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
