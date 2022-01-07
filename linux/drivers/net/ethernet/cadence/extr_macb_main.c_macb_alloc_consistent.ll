; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_alloc_consistent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_alloc_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, %struct.macb_queue* }
%struct.TYPE_4__ = type { i64 (%struct.macb.0*)* }
%struct.macb.0 = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.macb_queue = type { i8*, i64, i32, i8*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Allocated TX ring for queue %u of %d bytes at %08lx (mapped %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Allocated RX ring of %d bytes at %08lx (mapped %p)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macb*)* @macb_alloc_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_alloc_consistent(%struct.macb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.macb*, align 8
  %4 = alloca %struct.macb_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.macb*, %struct.macb** %3, align 8
  %8 = getelementptr inbounds %struct.macb, %struct.macb* %7, i32 0, i32 7
  %9 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  store %struct.macb_queue* %9, %struct.macb_queue** %4, align 8
  br label %10

10:                                               ; preds = %105, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.macb*, %struct.macb** %3, align 8
  %13 = getelementptr inbounds %struct.macb, %struct.macb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %110

16:                                               ; preds = %10
  %17 = load %struct.macb*, %struct.macb** %3, align 8
  %18 = call i32 @TX_RING_BYTES(%struct.macb* %17)
  %19 = load %struct.macb*, %struct.macb** %3, align 8
  %20 = getelementptr inbounds %struct.macb, %struct.macb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.macb*, %struct.macb** %3, align 8
  %24 = getelementptr inbounds %struct.macb, %struct.macb* %23, i32 0, i32 6
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %29 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %28, i32 0, i32 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @dma_alloc_coherent(i32* %26, i32 %27, i64* %29, i32 %30)
  %32 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %33 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %35 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %16
  br label %121

39:                                               ; preds = %16
  %40 = load %struct.macb*, %struct.macb** %3, align 8
  %41 = getelementptr inbounds %struct.macb, %struct.macb* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %47 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %50 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i32, i8*, i32, i64, i64, ...) @netdev_dbg(i32 %42, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %45, i64 %48, i8* %51)
  %53 = load %struct.macb*, %struct.macb** %3, align 8
  %54 = getelementptr inbounds %struct.macb, %struct.macb* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @kmalloc(i32 %59, i32 %60)
  %62 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %63 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %65 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %39
  br label %121

69:                                               ; preds = %39
  %70 = load %struct.macb*, %struct.macb** %3, align 8
  %71 = call i32 @RX_RING_BYTES(%struct.macb* %70)
  %72 = load %struct.macb*, %struct.macb** %3, align 8
  %73 = getelementptr inbounds %struct.macb, %struct.macb* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %6, align 4
  %76 = load %struct.macb*, %struct.macb** %3, align 8
  %77 = getelementptr inbounds %struct.macb, %struct.macb* %76, i32 0, i32 6
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %82 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %81, i32 0, i32 1
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @dma_alloc_coherent(i32* %79, i32 %80, i64* %82, i32 %83)
  %85 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %86 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %88 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %69
  br label %121

92:                                               ; preds = %69
  %93 = load %struct.macb*, %struct.macb** %3, align 8
  %94 = getelementptr inbounds %struct.macb, %struct.macb* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %98 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %101 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = call i32 (i32, i8*, i32, i64, i64, ...) @netdev_dbg(i32 %95, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %96, i64 %99, i64 %103)
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %5, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %5, align 4
  %108 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %109 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %108, i32 1
  store %struct.macb_queue* %109, %struct.macb_queue** %4, align 8
  br label %10

110:                                              ; preds = %10
  %111 = load %struct.macb*, %struct.macb** %3, align 8
  %112 = getelementptr inbounds %struct.macb, %struct.macb* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64 (%struct.macb.0*)*, i64 (%struct.macb.0*)** %113, align 8
  %115 = load %struct.macb*, %struct.macb** %3, align 8
  %116 = bitcast %struct.macb* %115 to %struct.macb.0*
  %117 = call i64 %114(%struct.macb.0* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %121

120:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %126

121:                                              ; preds = %119, %91, %68, %38
  %122 = load %struct.macb*, %struct.macb** %3, align 8
  %123 = call i32 @macb_free_consistent(%struct.macb* %122)
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %121, %120
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @TX_RING_BYTES(%struct.macb*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i64, i64, ...) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @RX_RING_BYTES(%struct.macb*) #1

declare dso_local i32 @macb_free_consistent(%struct.macb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
