; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_queue_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_queue_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32, %struct.TYPE_4__**, %struct.TYPE_3__*, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.videobuf_queue*, %struct.TYPE_4__*)* }

@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@VIDEOBUF_QUEUED = common dso_local global i64 0, align 8
@VIDEOBUF_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @videobuf_queue_cancel(%struct.videobuf_queue* %0) #0 {
  %2 = alloca %struct.videobuf_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %6 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %5, i32 0, i32 6
  store i64 0, i64* %6, align 8
  %7 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %8 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 4
  %11 = call i32 @wake_up_interruptible_sync(i32* %10)
  %12 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %13 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %72, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %17
  %22 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %23 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp eq %struct.TYPE_4__* null, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %72

31:                                               ; preds = %21
  %32 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %33 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VIDEOBUF_QUEUED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %31
  %44 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %45 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = call i32 @list_del(i32* %51)
  %53 = load i64, i64* @VIDEOBUF_ERROR, align 8
  %54 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %55 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 %53, i64* %61, align 8
  %62 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %63 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = call i32 @wake_up_all(i32* %69)
  br label %71

71:                                               ; preds = %43, %31
  br label %72

72:                                               ; preds = %71, %30
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %17

75:                                               ; preds = %17
  %76 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %77 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32 %78, i64 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %110, %75
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  %86 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %87 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %88, i64 %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = icmp eq %struct.TYPE_4__* null, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %110

95:                                               ; preds = %85
  %96 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %97 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32 (%struct.videobuf_queue*, %struct.TYPE_4__*)*, i32 (%struct.videobuf_queue*, %struct.TYPE_4__*)** %99, align 8
  %101 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %102 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %103 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %104, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = call i32 %100(%struct.videobuf_queue* %101, %struct.TYPE_4__* %108)
  br label %110

110:                                              ; preds = %95, %94
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %81

113:                                              ; preds = %81
  %114 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %115 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %114, i32 0, i32 0
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  ret void
}

declare dso_local i32 @wake_up_interruptible_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
