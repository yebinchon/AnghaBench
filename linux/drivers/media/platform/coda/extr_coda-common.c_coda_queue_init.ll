; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vb2_queue = type { i32, i32, i32, i32, i32*, i32, i32*, %struct.coda_ctx* }

@coda_qops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*, %struct.vb2_queue*)* @coda_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_queue_init(%struct.coda_ctx* %0, %struct.vb2_queue* %1) #0 {
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  store %struct.vb2_queue* %1, %struct.vb2_queue** %4, align 8
  %5 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %7 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %6, i32 0, i32 7
  store %struct.coda_ctx* %5, %struct.coda_ctx** %7, align 8
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %8, i32 0, i32 6
  store i32* @coda_qops, i32** %9, align 8
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %11 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %10, i32 0, i32 0
  store i32 4, i32* %11, align 8
  %12 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_COPY, align 4
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %14 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %20 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %24 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %31 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %33 = call i32 @vb2_queue_init(%struct.vb2_queue* %32)
  ret i32 %33
}

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
