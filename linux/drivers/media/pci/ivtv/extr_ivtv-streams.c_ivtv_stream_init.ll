; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_stream_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.ivtv = type { i32*, %struct.TYPE_3__, %struct.ivtv_stream* }
%struct.TYPE_3__ = type { i32* }
%struct.ivtv_stream = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ivtv* }

@ivtv_stream_info = common dso_local global %struct.TYPE_4__* null, align 8
@PCI_DMA_NONE = common dso_local global i32 0, align 4
@IVTV_DMA_UNMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, i32)* @ivtv_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_stream_init(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 2
  %8 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %8, i64 %10
  store %struct.ivtv_stream* %11, %struct.ivtv_stream** %5, align 8
  %12 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %13 = call i32 @memset(%struct.ivtv_stream* %12, i32 0, i32 64)
  %14 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %15 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %16 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %15, i32 0, i32 14
  store %struct.ivtv* %14, %struct.ivtv** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %19 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ivtv_stream_info, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %27 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %26, i32 0, i32 13
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ivtv_stream_info, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %35 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %34, i32 0, i32 12
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ivtv_stream_info, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i32, i32* @PCI_DMA_NONE, align 4
  %45 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %46 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %45, i32 0, i32 11
  store i32 %44, i32* %46, align 4
  br label %56

47:                                               ; preds = %2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ivtv_stream_info, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %55 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %43
  %57 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %58 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %65 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %67 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %56
  %71 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %72 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 1024
  %80 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %81 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %86 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %84, %87
  %89 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %90 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %70, %56
  %92 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %93 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %92, i32 0, i32 10
  %94 = call i32 @spin_lock_init(i32* %93)
  %95 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %96 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %95, i32 0, i32 9
  %97 = call i32 @init_waitqueue_head(i32* %96)
  %98 = load i32, i32* @IVTV_DMA_UNMAPPED, align 4
  %99 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %100 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %102 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %101, i32 0, i32 7
  %103 = call i32 @ivtv_queue_init(i32* %102)
  %104 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %105 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %104, i32 0, i32 6
  %106 = call i32 @ivtv_queue_init(i32* %105)
  %107 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %108 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %107, i32 0, i32 5
  %109 = call i32 @ivtv_queue_init(i32* %108)
  %110 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %111 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %110, i32 0, i32 4
  %112 = call i32 @ivtv_queue_init(i32* %111)
  %113 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %114 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %113, i32 0, i32 3
  %115 = call i32 @ivtv_queue_init(i32* %114)
  ret void
}

declare dso_local i32 @memset(%struct.ivtv_stream*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ivtv_queue_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
