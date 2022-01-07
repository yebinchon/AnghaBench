; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwxgmac2_descs.c_dwxgmac2_prepare_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwxgmac2_descs.c_dwxgmac2_prepare_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32 }

@XGMAC_TDES2_B1L = common dso_local global i32 0, align 4
@XGMAC_TDES3_FL = common dso_local global i32 0, align 4
@XGMAC_TDES3_FD = common dso_local global i32 0, align 4
@XGMAC_TDES3_CIC_SHIFT = common dso_local global i32 0, align 4
@XGMAC_TDES3_CIC = common dso_local global i32 0, align 4
@XGMAC_TDES3_LD = common dso_local global i32 0, align 4
@XGMAC_TDES3_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32, i32, i32, i32, i32, i32, i32)* @dwxgmac2_prepare_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwxgmac2_prepare_tx_desc(%struct.dma_desc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %23 = load i32, i32* @XGMAC_TDES2_B1L, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %27 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @XGMAC_TDES3_FL, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %17, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %8
  %38 = load i32, i32* @XGMAC_TDES3_FD, align 4
  %39 = load i32, i32* %17, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %17, align 4
  br label %46

41:                                               ; preds = %8
  %42 = load i32, i32* @XGMAC_TDES3_FD, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %17, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* @XGMAC_TDES3_CIC_SHIFT, align 4
  %51 = shl i32 3, %50
  %52 = load i32, i32* %17, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %17, align 4
  br label %59

54:                                               ; preds = %46
  %55 = load i32, i32* @XGMAC_TDES3_CIC, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %17, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @XGMAC_TDES3_LD, align 4
  %64 = load i32, i32* %17, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %17, align 4
  br label %71

66:                                               ; preds = %59
  %67 = load i32, i32* @XGMAC_TDES3_LD, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %17, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %17, align 4
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @XGMAC_TDES3_OWN, align 4
  %76 = load i32, i32* %17, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (...) @dma_wmb()
  br label %86

86:                                               ; preds = %84, %81, %78
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @cpu_to_le32(i32 %87)
  %89 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %90 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
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
