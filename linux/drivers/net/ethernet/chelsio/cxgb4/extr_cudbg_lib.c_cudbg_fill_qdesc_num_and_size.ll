; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_fill_qdesc_num_and_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_fill_qdesc_num_and_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@MAX_ETH_QSETS = common dso_local global i32 0, align 4
@MAX_CTRL_QUEUES = common dso_local global i32 0, align 4
@MAX_TXQ_ENTRIES = common dso_local global i32 0, align 4
@MAX_TXQ_DESC_SIZE = common dso_local global i32 0, align 4
@MAX_RSPQ_ENTRIES = common dso_local global i32 0, align 4
@MAX_RXQ_DESC_SIZE = common dso_local global i32 0, align 4
@MAX_RX_BUFFERS = common dso_local global i32 0, align 4
@MAX_FL_DESC_SIZE = common dso_local global i32 0, align 4
@MAX_CTRL_TXQ_ENTRIES = common dso_local global i32 0, align 4
@MAX_CTRL_TXQ_DESC_SIZE = common dso_local global i32 0, align 4
@INGQ_EXTRAS = common dso_local global i32 0, align 4
@CXGB4_TX_MAX = common dso_local global i32 0, align 4
@MAX_OFLD_QSETS = common dso_local global i32 0, align 4
@CXGB4_ULD_MAX = common dso_local global i32 0, align 4
@MAX_ULD_QSETS = common dso_local global i32 0, align 4
@SGE_MAX_IQ_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cudbg_fill_qdesc_num_and_size(%struct.adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @MAX_ETH_QSETS, align 4
  %10 = mul nsw i32 %9, 3
  %11 = load i32, i32* %7, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @MAX_CTRL_QUEUES, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @MAX_ETH_QSETS, align 4
  %17 = load i32, i32* @MAX_TXQ_ENTRIES, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* @MAX_TXQ_DESC_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @MAX_ETH_QSETS, align 4
  %24 = load i32, i32* @MAX_RSPQ_ENTRIES, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* @MAX_RXQ_DESC_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @MAX_ETH_QSETS, align 4
  %31 = load i32, i32* @MAX_RX_BUFFERS, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* @MAX_FL_DESC_SIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @MAX_CTRL_QUEUES, align 4
  %38 = load i32, i32* @MAX_CTRL_TXQ_ENTRIES, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @MAX_CTRL_TXQ_DESC_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @INGQ_EXTRAS, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @INGQ_EXTRAS, align 4
  %48 = load i32, i32* @MAX_RSPQ_ENTRIES, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* @MAX_RXQ_DESC_SIZE, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @MAX_TXQ_ENTRIES, align 4
  %57 = load i32, i32* @MAX_TXQ_DESC_SIZE, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @CXGB4_TX_MAX, align 4
  %62 = load i32, i32* @MAX_OFLD_QSETS, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @CXGB4_ULD_MAX, align 4
  %67 = load i32, i32* @MAX_ULD_QSETS, align 4
  %68 = mul nsw i32 %66, %67
  %69 = mul nsw i32 %68, 2
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @CXGB4_TX_MAX, align 4
  %73 = load i32, i32* @MAX_OFLD_QSETS, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* @MAX_TXQ_ENTRIES, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* @MAX_TXQ_DESC_SIZE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @CXGB4_ULD_MAX, align 4
  %82 = load i32, i32* @MAX_ULD_QSETS, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* @MAX_RSPQ_ENTRIES, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* @MAX_RXQ_DESC_SIZE, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @CXGB4_ULD_MAX, align 4
  %91 = load i32, i32* @MAX_ULD_QSETS, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* @MAX_RX_BUFFERS, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* @MAX_FL_DESC_SIZE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* @CXGB4_ULD_MAX, align 4
  %100 = load i32, i32* @MAX_ULD_QSETS, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @CXGB4_ULD_MAX, align 4
  %105 = load i32, i32* @MAX_ULD_QSETS, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* @SGE_MAX_IQ_SIZE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* @MAX_RXQ_DESC_SIZE, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = add i64 8, %115
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = add i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %8, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %3
  %124 = load i32, i32* %7, align 4
  %125 = load i32*, i32** %5, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %3
  %127 = load i32*, i32** %6, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* %8, align 4
  %131 = load i32*, i32** %6, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %126
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
