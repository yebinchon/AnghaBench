; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (%struct.videobuf_buffer*)* }
%struct.videobuf_buffer = type { i32 }
%struct.viu_buf = type { %struct.videobuf_buffer }

@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.viu_buf*)* @free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffer(%struct.videobuf_queue* %0, %struct.viu_buf* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.viu_buf*, align 8
  %5 = alloca %struct.videobuf_buffer*, align 8
  %6 = alloca i8*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.viu_buf* %1, %struct.viu_buf** %4, align 8
  %7 = load %struct.viu_buf*, %struct.viu_buf** %4, align 8
  %8 = getelementptr inbounds %struct.viu_buf, %struct.viu_buf* %7, i32 0, i32 0
  store %struct.videobuf_buffer* %8, %struct.videobuf_buffer** %5, align 8
  store i8* null, i8** %6, align 8
  %9 = call i32 (...) @in_interrupt()
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %12 = load %struct.viu_buf*, %struct.viu_buf** %4, align 8
  %13 = getelementptr inbounds %struct.viu_buf, %struct.viu_buf* %12, i32 0, i32 0
  %14 = call i32 @videobuf_waiton(%struct.videobuf_queue* %11, %struct.videobuf_buffer* %13, i32 0, i32 0)
  %15 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %16 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %21 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8* (%struct.videobuf_buffer*)*, i8* (%struct.videobuf_buffer*)** %23, align 8
  %25 = icmp ne i8* (%struct.videobuf_buffer*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %28 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8* (%struct.videobuf_buffer*)*, i8* (%struct.videobuf_buffer*)** %30, align 8
  %32 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %33 = call i8* %31(%struct.videobuf_buffer* %32)
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %26, %19, %2
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %39 = load %struct.viu_buf*, %struct.viu_buf** %4, align 8
  %40 = getelementptr inbounds %struct.viu_buf, %struct.viu_buf* %39, i32 0, i32 0
  %41 = call i32 @videobuf_dma_contig_free(%struct.videobuf_queue* %38, %struct.videobuf_buffer* %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %44 = load %struct.viu_buf*, %struct.viu_buf** %4, align 8
  %45 = getelementptr inbounds %struct.viu_buf, %struct.viu_buf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @videobuf_waiton(%struct.videobuf_queue*, %struct.videobuf_buffer*, i32, i32) #1

declare dso_local i32 @videobuf_dma_contig_free(%struct.videobuf_queue*, %struct.videobuf_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
