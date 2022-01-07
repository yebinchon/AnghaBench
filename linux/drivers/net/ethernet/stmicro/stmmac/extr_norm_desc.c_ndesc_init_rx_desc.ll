; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_norm_desc.c_ndesc_init_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_norm_desc.c_ndesc_init_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32 }

@RDES0_OWN = common dso_local global i32 0, align 4
@BUF_SIZE_2KiB = common dso_local global i64 0, align 8
@RDES1_BUFFER1_SIZE_MASK = common dso_local global i32 0, align 4
@STMMAC_CHAIN_MODE = common dso_local global i32 0, align 4
@RDES1_DISABLE_IC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32, i32, i32, i32)* @ndesc_init_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndesc_init_rx_desc(%struct.dma_desc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dma_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dma_desc* %0, %struct.dma_desc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @RDES0_OWN, align 4
  %13 = call i32 @cpu_to_le32(i32 %12)
  %14 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %15 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i64, i64* @BUF_SIZE_2KiB, align 8
  %20 = sub nsw i64 %19, 1
  %21 = call i32 @min(i32 %18, i64 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @RDES1_BUFFER1_SIZE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %27 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @STMMAC_CHAIN_MODE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ndesc_rx_set_on_chain(%struct.dma_desc* %34, i32 %35)
  br label %42

37:                                               ; preds = %5
  %38 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ndesc_rx_set_on_ring(%struct.dma_desc* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* @RDES1_DISABLE_IC, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %49 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %42
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @ndesc_rx_set_on_chain(%struct.dma_desc*, i32) #1

declare dso_local i32 @ndesc_rx_set_on_ring(%struct.dma_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
