; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac4_descs.c_dwmac4_rd_prepare_tso_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac4_descs.c_dwmac4_rd_prepare_tso_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32 }

@TDES2_BUFFER1_SIZE_MASK = common dso_local global i32 0, align 4
@TDES2_BUFFER2_SIZE_MASK_SHIFT = common dso_local global i32 0, align 4
@TDES2_BUFFER2_SIZE_MASK = common dso_local global i32 0, align 4
@TDES3_FIRST_DESCRIPTOR = common dso_local global i32 0, align 4
@TDES3_TCP_SEGMENTATION_ENABLE = common dso_local global i32 0, align 4
@TDES3_HDR_LEN_SHIFT = common dso_local global i32 0, align 4
@TDES3_SLOT_NUMBER_MASK = common dso_local global i32 0, align 4
@TDES3_TCP_PKT_PAYLOAD_MASK = common dso_local global i32 0, align 4
@TDES3_LAST_DESCRIPTOR = common dso_local global i32 0, align 4
@TDES3_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32, i32, i32, i32, i32, i32, i32)* @dwmac4_rd_prepare_tso_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwmac4_rd_prepare_tso_tx_desc(%struct.dma_desc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @TDES2_BUFFER1_SIZE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %30 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %24, %8
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @TDES2_BUFFER2_SIZE_MASK_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @TDES2_BUFFER2_SIZE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %44 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %36, %33
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i32, i32* @TDES3_FIRST_DESCRIPTOR, align 4
  %52 = load i32, i32* @TDES3_TCP_SEGMENTATION_ENABLE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @TDES3_HDR_LEN_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @TDES3_SLOT_NUMBER_MASK, align 4
  %58 = and i32 %56, %57
  %59 = or i32 %53, %58
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @TDES3_TCP_PKT_PAYLOAD_MASK, align 4
  %62 = and i32 %60, %61
  %63 = or i32 %59, %62
  %64 = load i32, i32* %17, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %17, align 4
  br label %71

66:                                               ; preds = %47
  %67 = load i32, i32* @TDES3_FIRST_DESCRIPTOR, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %17, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %17, align 4
  br label %71

71:                                               ; preds = %66, %50
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @TDES3_LAST_DESCRIPTOR, align 4
  %76 = load i32, i32* %17, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %17, align 4
  br label %83

78:                                               ; preds = %71
  %79 = load i32, i32* @TDES3_LAST_DESCRIPTOR, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %17, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %78, %74
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @TDES3_OWN, align 4
  %88 = load i32, i32* %17, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 (...) @dma_wmb()
  br label %98

98:                                               ; preds = %96, %93, %90
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @cpu_to_le32(i32 %99)
  %101 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %102 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dma_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
