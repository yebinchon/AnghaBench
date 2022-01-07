; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rxq_alloc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rxq_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_rcb = type { %struct.TYPE_2__*, i32, %struct.bnad_rx_unmap_q* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.bnad_rx_unmap_q = type { i32, i32, i32 }

@BNAD_RXBUF_PAGE = common dso_local global i32 0, align 4
@BNAD_RXBUF_MULTI_BUFF = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, %struct.bna_rcb*)* @bnad_rxq_alloc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_rxq_alloc_init(%struct.bnad* %0, %struct.bna_rcb* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_rcb*, align 8
  %5 = alloca %struct.bnad_rx_unmap_q*, align 8
  %6 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_rcb* %1, %struct.bna_rcb** %4, align 8
  %7 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %8 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %7, i32 0, i32 2
  %9 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %8, align 8
  store %struct.bnad_rx_unmap_q* %9, %struct.bnad_rx_unmap_q** %5, align 8
  %10 = load %struct.bnad*, %struct.bnad** %3, align 8
  %11 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %12 = call i32 @bnad_rxq_alloc_uninit(%struct.bnad* %10, %struct.bna_rcb* %11)
  %13 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %14 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @get_order(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @BNAD_RXBUF_PAGE, align 4
  %20 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %21 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %23 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @bna_is_small_rxq(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %29 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %31 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %36 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %77

37:                                               ; preds = %2
  %38 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %39 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %46 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %48 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %53 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @BNAD_RXBUF_MULTI_BUFF, align 4
  %55 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %56 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %76

57:                                               ; preds = %37
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %60 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %62 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 2048
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 %68, %69
  br label %72

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ 2048, %71 ]
  %74 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %75 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %44
  br label %77

77:                                               ; preds = %76, %27
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = load i32, i32* %6, align 4
  %80 = shl i32 %78, %79
  %81 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %82 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = srem i32 %80, %83
  %85 = call i32 @BUG_ON(i32 %84)
  ret i32 0
}

declare dso_local i32 @bnad_rxq_alloc_uninit(%struct.bnad*, %struct.bna_rcb*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i64 @bna_is_small_rxq(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
