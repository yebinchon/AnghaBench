; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_txrx_irq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_txrx_irq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, i32 }
%struct.bna_intr_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BNAD_CF_MSIX = common dso_local global i32 0, align 4
@BNA_INTR_T_MSIX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNAD_MAILBOX_MSIX_VECTORS = common dso_local global i32 0, align 4
@BNA_INTR_T_INTX = common dso_local global i32 0, align 4
@BNAD_INTX_TX_IB_BITMASK = common dso_local global i32 0, align 4
@BNAD_INTX_RX_IB_BITMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, i32, i32, %struct.bna_intr_info*)* @bnad_txrx_irq_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_txrx_irq_alloc(%struct.bnad* %0, i32 %1, i32 %2, %struct.bna_intr_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bna_intr_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.bna_intr_info* %3, %struct.bna_intr_info** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.bnad*, %struct.bnad** %6, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 3
  %16 = load i64, i64* %13, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.bnad*, %struct.bnad** %6, align 8
  %19 = getelementptr inbounds %struct.bnad, %struct.bnad* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.bnad*, %struct.bnad** %6, align 8
  %22 = getelementptr inbounds %struct.bnad, %struct.bnad* %21, i32 0, i32 3
  %23 = load i64, i64* %13, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @BNAD_CF_MSIX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %90

29:                                               ; preds = %4
  %30 = load i32, i32* @BNA_INTR_T_MSIX, align 4
  %31 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %32 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %34 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kcalloc(i32 %35, i32 4, i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_2__*
  %39 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %40 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %39, i32 0, i32 1
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %40, align 8
  %41 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %42 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %129

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %66 [
    i32 128, label %50
    i32 129, label %54
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* @BNAD_MAILBOX_MSIX_VECTORS, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  br label %68

54:                                               ; preds = %48
  %55 = load i32, i32* @BNAD_MAILBOX_MSIX_VECTORS, align 4
  %56 = load %struct.bnad*, %struct.bnad** %6, align 8
  %57 = getelementptr inbounds %struct.bnad, %struct.bnad* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bnad*, %struct.bnad** %6, align 8
  %60 = getelementptr inbounds %struct.bnad, %struct.bnad* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = add nsw i32 %55, %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %11, align 4
  br label %68

66:                                               ; preds = %48
  %67 = call i32 (...) @BUG()
  br label %68

68:                                               ; preds = %66, %54, %50
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %72 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %80 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %69

89:                                               ; preds = %69
  br label %128

90:                                               ; preds = %4
  %91 = load i32, i32* @BNA_INTR_T_INTX, align 4
  %92 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %93 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %95 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %97 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @kcalloc(i32 %98, i32 4, i32 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_2__*
  %102 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %103 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %102, i32 0, i32 1
  store %struct.TYPE_2__* %101, %struct.TYPE_2__** %103, align 8
  %104 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %105 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = icmp ne %struct.TYPE_2__* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %90
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %129

111:                                              ; preds = %90
  %112 = load i32, i32* %7, align 4
  switch i32 %112, label %127 [
    i32 128, label %113
    i32 129, label %120
  ]

113:                                              ; preds = %111
  %114 = load i32, i32* @BNAD_INTX_TX_IB_BITMASK, align 4
  %115 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %116 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 4
  br label %127

120:                                              ; preds = %111
  %121 = load i32, i32* @BNAD_INTX_RX_IB_BITMASK, align 4
  %122 = load %struct.bna_intr_info*, %struct.bna_intr_info** %9, align 8
  %123 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 4
  br label %127

127:                                              ; preds = %111, %120, %113
  br label %128

128:                                              ; preds = %127, %89
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %108, %45
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
