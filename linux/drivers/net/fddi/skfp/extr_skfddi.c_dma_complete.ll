; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%union.s_fp_descr = type { %struct.s_smt_fp_rxd }
%struct.s_smt_fp_rxd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@DMA_WR = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_complete(%struct.s_smc* %0, %union.s_fp_descr* %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca %union.s_fp_descr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.s_smt_fp_rxd*, align 8
  %9 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store %union.s_fp_descr* %1, %union.s_fp_descr** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DMA_WR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %3
  %15 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %16 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %15, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %7, align 8
  %17 = load %union.s_fp_descr*, %union.s_fp_descr** %5, align 8
  %18 = bitcast %union.s_fp_descr* %17 to %struct.s_smt_fp_rxd*
  store %struct.s_smt_fp_rxd* %18, %struct.s_smt_fp_rxd** %8, align 8
  %19 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %8, align 8
  %20 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load volatile i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %14
  %25 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %8, align 8
  %26 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load volatile i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %8, align 8
  %37 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load volatile i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %42 = call i32 @pci_unmap_single(i32* %35, i64 %39, i32 %40, i32 %41)
  %43 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %8, align 8
  %44 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store volatile i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %30, %24, %14
  br label %47

47:                                               ; preds = %46, %3
  ret void
}

declare dso_local i32 @pci_unmap_single(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
