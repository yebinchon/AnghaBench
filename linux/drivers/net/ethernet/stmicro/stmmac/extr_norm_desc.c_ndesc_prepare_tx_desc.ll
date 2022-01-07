; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_norm_desc.c_ndesc_prepare_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_norm_desc.c_ndesc_prepare_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32 }

@TDES1_FIRST_SEGMENT = common dso_local global i32 0, align 4
@TX_CIC_FULL = common dso_local global i32 0, align 4
@TDES1_CHECKSUM_INSERTION_SHIFT = common dso_local global i32 0, align 4
@TDES1_LAST_SEGMENT = common dso_local global i32 0, align 4
@STMMAC_CHAIN_MODE = common dso_local global i32 0, align 4
@TDES0_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32, i32, i32, i32, i32, i32, i32)* @ndesc_prepare_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndesc_prepare_tx_desc(%struct.dma_desc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.dma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dma_desc* %0, %struct.dma_desc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %19 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i32, i32* @TDES1_FIRST_SEGMENT, align 4
  %26 = load i32, i32* %17, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %17, align 4
  br label %33

28:                                               ; preds = %8
  %29 = load i32, i32* @TDES1_FIRST_SEGMENT, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %17, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %17, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @TX_CIC_FULL, align 4
  %39 = load i32, i32* @TDES1_CHECKSUM_INSERTION_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %17, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %17, align 4
  br label %50

43:                                               ; preds = %33
  %44 = load i32, i32* @TX_CIC_FULL, align 4
  %45 = load i32, i32* @TDES1_CHECKSUM_INSERTION_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %17, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %17, align 4
  br label %50

50:                                               ; preds = %43, %37
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @TDES1_LAST_SEGMENT, align 4
  %55 = load i32, i32* %17, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %17, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @cpu_to_le32(i32 %58)
  %60 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %61 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @STMMAC_CHAIN_MODE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @norm_set_tx_desc_len_on_chain(%struct.dma_desc* %66, i32 %67)
  br label %73

69:                                               ; preds = %57
  %70 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @norm_set_tx_desc_len_on_ring(%struct.dma_desc* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* @TDES0_OWN, align 4
  %78 = call i32 @cpu_to_le32(i32 %77)
  %79 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %80 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %73
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @norm_set_tx_desc_len_on_chain(%struct.dma_desc*, i32) #1

declare dso_local i32 @norm_set_tx_desc_len_on_ring(%struct.dma_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
