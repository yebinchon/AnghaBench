; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_free_q_desc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_free_q_desc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.q_desc_mem = type { i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.q_desc_mem*)* @nicvf_free_q_desc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_free_q_desc_mem(%struct.nicvf* %0, %struct.q_desc_mem* %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.q_desc_mem*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store %struct.q_desc_mem* %1, %struct.q_desc_mem** %4, align 8
  %5 = load %struct.q_desc_mem*, %struct.q_desc_mem** %4, align 8
  %6 = icmp ne %struct.q_desc_mem* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %27

8:                                                ; preds = %2
  %9 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.q_desc_mem*, %struct.q_desc_mem** %4, align 8
  %14 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.q_desc_mem*, %struct.q_desc_mem** %4, align 8
  %17 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.q_desc_mem*, %struct.q_desc_mem** %4, align 8
  %20 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dma_free_coherent(i32* %12, i32 %15, i32* %18, i32 %21)
  %23 = load %struct.q_desc_mem*, %struct.q_desc_mem** %4, align 8
  %24 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.q_desc_mem*, %struct.q_desc_mem** %4, align 8
  %26 = getelementptr inbounds %struct.q_desc_mem, %struct.q_desc_mem* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
