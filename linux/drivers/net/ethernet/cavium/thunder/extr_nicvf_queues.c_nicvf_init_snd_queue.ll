; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_init_snd_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_init_snd_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_queue = type { i32, i32, i32, i32, i32, i64, i32*, i32, i64, i64, i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@SND_QUEUE_DESC_SIZE = common dso_local global i32 0, align 4
@NICVF_SQ_BASE_ALIGN_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SND_QUEUE_THRESH = common dso_local global i32 0, align 4
@MAX_SND_QUEUES_PER_QS = common dso_local global i32 0, align 4
@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*, %struct.snd_queue*, i32, i32)* @nicvf_init_snd_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_init_snd_queue(%struct.nicvf* %0, %struct.snd_queue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nicvf*, align 8
  %7 = alloca %struct.snd_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %6, align 8
  store %struct.snd_queue* %1, %struct.snd_queue** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %12 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %13 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %12, i32 0, i32 11
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @SND_QUEUE_DESC_SIZE, align 4
  %16 = load i32, i32* @NICVF_SQ_BASE_ALIGN_BYTES, align 4
  %17 = call i32 @nicvf_alloc_q_desc_mem(%struct.nicvf* %11, %struct.TYPE_6__* %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %129

22:                                               ; preds = %4
  %23 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %24 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %28 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %27, i32 0, i32 12
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kcalloc(i32 %29, i32 4, i32 %30)
  %32 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %33 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %32, i32 0, i32 10
  store i8* %31, i8** %33, align 8
  %34 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %35 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %34, i32 0, i32 10
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %22
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %129

41:                                               ; preds = %22
  %42 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %43 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %42, i32 0, i32 9
  store i64 0, i64* %43, align 8
  %44 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %45 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %44, i32 0, i32 8
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @SND_QUEUE_THRESH, align 4
  %47 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %48 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %50 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %41
  %54 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %55 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @MAX_SND_QUEUES_PER_QS, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %53, %41
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %65 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @kcalloc(i32 %71, i32 4, i32 %72)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %76 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %75, i32 0, i32 6
  store i32* %74, i32** %76, align 8
  %77 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %78 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %129

84:                                               ; preds = %70
  %85 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %86 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %90 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %92 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  br label %128

93:                                               ; preds = %62
  %94 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %95 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %94, i32 0, i32 6
  store i32* null, i32** %95, align 8
  %96 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %97 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %96, i32 0, i32 5
  store i64 0, i64* %97, align 8
  %98 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %99 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %101 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %103 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %102, i32 0, i32 4
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %104, 1
  %106 = call i32 @atomic_set(i32* %103, i32 %105)
  %107 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %108 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %115 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %114, i32 0, i32 3
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i32 @dma_alloc_coherent(i32* %110, i32 %113, i32* %115, i32 %116)
  %118 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %119 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %121 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %93
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %129

127:                                              ; preds = %93
  br label %128

128:                                              ; preds = %127, %84
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %124, %81, %38, %20
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @nicvf_alloc_q_desc_mem(%struct.nicvf*, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
