; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c___videobuf_read_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c___videobuf_read_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32, i32, %struct.TYPE_5__**, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.videobuf_queue*, %struct.TYPE_5__*, i32)*, i32 (%struct.videobuf_queue*, %struct.TYPE_5__*)*, i32 (%struct.videobuf_queue*, i32*, i32*)* }

@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@V4L2_MEMORY_USERPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*)* @__videobuf_read_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__videobuf_read_start(%struct.videobuf_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %11 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32 (%struct.videobuf_queue*, i32*, i32*)*, i32 (%struct.videobuf_queue*, i32*, i32*)** %13, align 8
  %15 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %16 = call i32 %14(%struct.videobuf_queue* %15, i32* %6, i32* %7)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 2, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @PAGE_ALIGN(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @V4L2_MEMORY_USERPTR, align 4
  %33 = call i32 @__videobuf_mmap_setup(%struct.videobuf_queue* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %117

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %78, %38
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %40
  %45 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %46 = call i32 @videobuf_next_field(%struct.videobuf_queue* %45)
  store i32 %46, i32* %4, align 4
  %47 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %48 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (%struct.videobuf_queue*, %struct.TYPE_5__*, i32)*, i32 (%struct.videobuf_queue*, %struct.TYPE_5__*, i32)** %50, align 8
  %52 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %53 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %54 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 %51(%struct.videobuf_queue* %52, %struct.TYPE_5__* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  br label %117

66:                                               ; preds = %44
  %67 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %68 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %69, i64 %71
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %76 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %75, i32 0, i32 4
  %77 = call i32 @list_add_tail(i32* %74, i32* %76)
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %40

81:                                               ; preds = %40
  %82 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %83 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @spin_lock_irqsave(i32 %84, i64 %85)
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %106, %81
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %93 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32 (%struct.videobuf_queue*, %struct.TYPE_5__*)*, i32 (%struct.videobuf_queue*, %struct.TYPE_5__*)** %95, align 8
  %97 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %98 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %99 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %98, i32 0, i32 2
  %100 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %100, i64 %102
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = call i32 %96(%struct.videobuf_queue* %97, %struct.TYPE_5__* %104)
  br label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %87

109:                                              ; preds = %87
  %110 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %111 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32 %112, i64 %113)
  %115 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %116 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %109, %64, %36
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @__videobuf_mmap_setup(%struct.videobuf_queue*, i32, i32, i32) #1

declare dso_local i32 @videobuf_next_field(%struct.videobuf_queue*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
