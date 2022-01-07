; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_alloc_q_desc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_alloc_q_desc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.q_desc_mem = type { i32, i32, i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*, %struct.q_desc_mem*, i32, i32, i32)* @nicvf_alloc_q_desc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_alloc_q_desc_mem(%struct.nicvf* %0, %struct.q_desc_mem* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nicvf*, align 8
  %8 = alloca %struct.q_desc_mem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %7, align 8
  store %struct.q_desc_mem* %1, %struct.q_desc_mem** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %14 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* %11, align 4
  %19 = add nsw i32 %17, %18
  %20 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %21 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %23 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %27 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %30 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %29, i32 0, i32 2
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @dma_alloc_coherent(i32* %25, i32 %28, i64* %30, i32 %31)
  %33 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %34 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  %35 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %36 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %5
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %64

42:                                               ; preds = %5
  %43 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %44 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @NICVF_ALIGNED_ADDR(i32 %46, i32 %47)
  %49 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %50 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %52 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %55 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %58 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = add nsw i64 %53, %60
  %62 = load %struct.q_desc_mem*, %struct.q_desc_mem** %8, align 8
  %63 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %62, i32 0, i32 5
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %42, %39
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i64 @NICVF_ALIGNED_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
