; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_free_aux_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_free_aux_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_dev = type { i32 }
%struct.coda_aux_buf = type { i32*, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coda_free_aux_buf(%struct.coda_dev* %0, %struct.coda_aux_buf* %1) #0 {
  %3 = alloca %struct.coda_dev*, align 8
  %4 = alloca %struct.coda_aux_buf*, align 8
  store %struct.coda_dev* %0, %struct.coda_dev** %3, align 8
  store %struct.coda_aux_buf* %1, %struct.coda_aux_buf** %4, align 8
  %5 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %4, align 8
  %6 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %11 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %4, align 8
  %14 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %4, align 8
  %17 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %4, align 8
  %20 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dma_free_coherent(i32 %12, i64 %15, i32* %18, i32 %21)
  %23 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %4, align 8
  %24 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %4, align 8
  %26 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %4, align 8
  %28 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @debugfs_remove(i32* %29)
  %31 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %4, align 8
  %32 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @debugfs_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
