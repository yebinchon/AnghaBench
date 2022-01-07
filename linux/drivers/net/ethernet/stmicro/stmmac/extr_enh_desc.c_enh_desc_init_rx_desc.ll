; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_init_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_init_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32 }

@RDES0_OWN = common dso_local global i32 0, align 4
@BUF_SIZE_8KiB = common dso_local global i32 0, align 4
@ERDES1_BUFFER1_SIZE_MASK = common dso_local global i32 0, align 4
@STMMAC_CHAIN_MODE = common dso_local global i32 0, align 4
@ERDES1_DISABLE_IC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32, i32, i32, i32)* @enh_desc_init_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enh_desc_init_rx_desc(%struct.dma_desc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %19 = load i32, i32* @BUF_SIZE_8KiB, align 4
  %20 = call i32 @min(i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ERDES1_BUFFER1_SIZE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %26 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @STMMAC_CHAIN_MODE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %34 = call i32 @ehn_desc_rx_set_on_chain(%struct.dma_desc* %33)
  br label %40

35:                                               ; preds = %5
  %36 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @ehn_desc_rx_set_on_ring(%struct.dma_desc* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* @ERDES1_DISABLE_IC, align 4
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %47 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %40
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ehn_desc_rx_set_on_chain(%struct.dma_desc*) #1

declare dso_local i32 @ehn_desc_rx_set_on_ring(%struct.dma_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
