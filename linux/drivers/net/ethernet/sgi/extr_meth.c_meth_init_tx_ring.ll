; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.meth_private = type { i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@TX_RING_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meth_private*)* @meth_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_init_tx_ring(%struct.meth_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meth_private*, align 8
  store %struct.meth_private* %0, %struct.meth_private** %3, align 8
  %4 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %5 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %4, i32 0, i32 7
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* @TX_RING_BUFFER_SIZE, align 4
  %9 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %10 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %9, i32 0, i32 2
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i32 @dma_alloc_coherent(i32* %7, i32 %8, i32* %10, i32 %11)
  %13 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %14 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %16 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %43

22:                                               ; preds = %1
  %23 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %24 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %26 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %28 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %30 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %36 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memset(i32 %37, i32 0, i32 4)
  %39 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %40 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @memset(i32 %41, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %22, %19
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
