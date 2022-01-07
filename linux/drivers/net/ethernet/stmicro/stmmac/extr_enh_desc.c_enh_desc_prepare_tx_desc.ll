; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_prepare_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_prepare_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32 }

@STMMAC_CHAIN_MODE = common dso_local global i32 0, align 4
@ETDES0_FIRST_SEGMENT = common dso_local global i32 0, align 4
@TX_CIC_FULL = common dso_local global i32 0, align 4
@ETDES0_CHECKSUM_INSERTION_SHIFT = common dso_local global i32 0, align 4
@ETDES0_LAST_SEGMENT = common dso_local global i32 0, align 4
@ETDES0_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32, i32, i32, i32, i32, i32, i32)* @enh_desc_prepare_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enh_desc_prepare_tx_desc(%struct.dma_desc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %19 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @STMMAC_CHAIN_MODE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %8
  %26 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @enh_set_tx_desc_len_on_chain(%struct.dma_desc* %26, i32 %27)
  br label %33

29:                                               ; preds = %8
  %30 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @enh_set_tx_desc_len_on_ring(%struct.dma_desc* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @ETDES0_FIRST_SEGMENT, align 4
  %38 = load i32, i32* %17, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %17, align 4
  br label %45

40:                                               ; preds = %33
  %41 = load i32, i32* @ETDES0_FIRST_SEGMENT, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %17, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %17, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* @TX_CIC_FULL, align 4
  %51 = load i32, i32* @ETDES0_CHECKSUM_INSERTION_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %17, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %17, align 4
  br label %62

55:                                               ; preds = %45
  %56 = load i32, i32* @TX_CIC_FULL, align 4
  %57 = load i32, i32* @ETDES0_CHECKSUM_INSERTION_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %17, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %55, %49
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @ETDES0_LAST_SEGMENT, align 4
  %67 = load i32, i32* %17, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @ETDES0_OWN, align 4
  %74 = load i32, i32* %17, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (...) @dma_wmb()
  br label %84

84:                                               ; preds = %82, %79, %76
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @cpu_to_le32(i32 %85)
  %87 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %88 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @enh_set_tx_desc_len_on_chain(%struct.dma_desc*, i32) #1

declare dso_local i32 @enh_set_tx_desc_len_on_ring(%struct.dma_desc*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
