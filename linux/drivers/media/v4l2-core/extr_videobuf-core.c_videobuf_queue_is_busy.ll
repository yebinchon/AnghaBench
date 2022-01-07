; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_queue_is_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_queue_is_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.TYPE_4__**, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@MAGIC_QTYPE_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"busy: streaming active\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"busy: pending read #1\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"busy: pending read #2\0A\00", align 1
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"busy: buffer #%d mapped\0A\00", align 1
@VIDEOBUF_QUEUED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"busy: buffer #%d queued\0A\00", align 1
@VIDEOBUF_ACTIVE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"busy: buffer #%d active\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_queue_is_busy(%struct.videobuf_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  %5 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %6 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %5, i32 0, i32 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MAGIC_QTYPE_OPS, align 4
  %11 = call i32 @MAGIC_CHECK(i32 %9, i32 %10)
  %12 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %13 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %96

18:                                               ; preds = %1
  %19 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %20 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %96

25:                                               ; preds = %18
  %26 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %27 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %96

32:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %92, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %95

37:                                               ; preds = %33
  %38 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %39 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp eq %struct.TYPE_4__* null, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %92

47:                                               ; preds = %37
  %48 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %49 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  store i32 1, i32* %2, align 4
  br label %96

61:                                               ; preds = %47
  %62 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %63 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VIDEOBUF_QUEUED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  store i32 1, i32* %2, align 4
  br label %96

76:                                               ; preds = %61
  %77 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %78 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %79, i64 %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VIDEOBUF_ACTIVE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32, i32* %4, align 4
  %90 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  store i32 1, i32* %2, align 4
  br label %96

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %46
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %33

95:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %88, %73, %58, %30, %23, %16
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
