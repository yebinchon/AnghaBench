; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwxgmac2_descs.c_dwxgmac2_prepare_tso_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwxgmac2_descs.c_dwxgmac2_prepare_tso_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32 }

@XGMAC_TDES2_B1L = common dso_local global i32 0, align 4
@XGMAC_TDES2_B2L_SHIFT = common dso_local global i32 0, align 4
@XGMAC_TDES2_B2L = common dso_local global i32 0, align 4
@XGMAC_TDES3_FD = common dso_local global i32 0, align 4
@XGMAC_TDES3_TSE = common dso_local global i32 0, align 4
@XGMAC_TDES3_THL_SHIFT = common dso_local global i32 0, align 4
@XGMAC_TDES3_THL = common dso_local global i32 0, align 4
@XGMAC_TDES3_TPL = common dso_local global i32 0, align 4
@XGMAC_TDES3_LD = common dso_local global i32 0, align 4
@XGMAC_TDES3_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32, i32, i32, i32, i32, i32, i32)* @dwxgmac2_prepare_tso_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwxgmac2_prepare_tso_tx_desc(%struct.dma_desc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %26 = load i32, i32* @XGMAC_TDES2_B1L, align 4
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
  %38 = load i32, i32* @XGMAC_TDES2_B2L_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @XGMAC_TDES2_B2L, align 4
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
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i32, i32* @XGMAC_TDES3_FD, align 4
  %52 = load i32, i32* @XGMAC_TDES3_TSE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %17, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @XGMAC_TDES3_THL_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* @XGMAC_TDES3_THL, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %17, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @XGMAC_TDES3_TPL, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %17, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %17, align 4
  br label %73

68:                                               ; preds = %47
  %69 = load i32, i32* @XGMAC_TDES3_FD, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %17, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %68, %50
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @XGMAC_TDES3_LD, align 4
  %78 = load i32, i32* %17, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %17, align 4
  br label %85

80:                                               ; preds = %73
  %81 = load i32, i32* @XGMAC_TDES3_LD, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %17, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %17, align 4
  br label %85

85:                                               ; preds = %80, %76
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @XGMAC_TDES3_OWN, align 4
  %90 = load i32, i32* %17, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 (...) @dma_wmb()
  br label %100

100:                                              ; preds = %98, %95, %92
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @cpu_to_le32(i32 %101)
  %103 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %104 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
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
