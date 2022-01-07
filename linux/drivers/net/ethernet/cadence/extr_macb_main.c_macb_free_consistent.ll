; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_free_consistent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_free_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32, i32, i32, %struct.TYPE_4__*, %struct.macb_queue*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.macb_queue = type { i32*, i32, i32*, i32, i32* }
%struct.TYPE_3__ = type { i32 (%struct.macb.0*)* }
%struct.macb.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @macb_free_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_free_consistent(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca %struct.macb_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %2, align 8
  %6 = load %struct.macb*, %struct.macb** %2, align 8
  %7 = getelementptr inbounds %struct.macb, %struct.macb* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (%struct.macb.0*)*, i32 (%struct.macb.0*)** %8, align 8
  %10 = load %struct.macb*, %struct.macb** %2, align 8
  %11 = bitcast %struct.macb* %10 to %struct.macb.0*
  %12 = call i32 %9(%struct.macb.0* %11)
  store i32 0, i32* %4, align 4
  %13 = load %struct.macb*, %struct.macb** %2, align 8
  %14 = getelementptr inbounds %struct.macb, %struct.macb* %13, i32 0, i32 4
  %15 = load %struct.macb_queue*, %struct.macb_queue** %14, align 8
  store %struct.macb_queue* %15, %struct.macb_queue** %3, align 8
  br label %16

16:                                               ; preds = %81, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.macb*, %struct.macb** %2, align 8
  %19 = getelementptr inbounds %struct.macb, %struct.macb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %86

22:                                               ; preds = %16
  %23 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %24 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %28 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %30 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %22
  %34 = load %struct.macb*, %struct.macb** %2, align 8
  %35 = call i32 @TX_RING_BYTES(%struct.macb* %34)
  %36 = load %struct.macb*, %struct.macb** %2, align 8
  %37 = getelementptr inbounds %struct.macb, %struct.macb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %5, align 4
  %40 = load %struct.macb*, %struct.macb** %2, align 8
  %41 = getelementptr inbounds %struct.macb, %struct.macb* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %46 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %49 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dma_free_coherent(i32* %43, i32 %44, i32* %47, i32 %50)
  %52 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %53 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %33, %22
  %55 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %56 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load %struct.macb*, %struct.macb** %2, align 8
  %61 = call i32 @RX_RING_BYTES(%struct.macb* %60)
  %62 = load %struct.macb*, %struct.macb** %2, align 8
  %63 = getelementptr inbounds %struct.macb, %struct.macb* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %5, align 4
  %66 = load %struct.macb*, %struct.macb** %2, align 8
  %67 = getelementptr inbounds %struct.macb, %struct.macb* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %72 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %75 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dma_free_coherent(i32* %69, i32 %70, i32* %73, i32 %76)
  %78 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %79 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %59, %54
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %4, align 4
  %84 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %85 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %84, i32 1
  store %struct.macb_queue* %85, %struct.macb_queue** %3, align 8
  br label %16

86:                                               ; preds = %16
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @TX_RING_BYTES(%struct.macb*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @RX_RING_BYTES(%struct.macb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
