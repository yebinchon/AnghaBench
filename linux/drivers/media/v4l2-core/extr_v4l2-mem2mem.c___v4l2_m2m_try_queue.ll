; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c___v4l2_m2m_try_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c___v4l2_m2m_try_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_m2m_dev = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32)* }
%struct.v4l2_m2m_ctx = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Trying to schedule a job for m2m_ctx: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Streaming needs to be on for both queues\0A\00", align 1
@TRANS_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Aborted context\0A\00", align 1
@TRANS_QUEUED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"On job queue already\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"No input buffers available\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"No output buffers available\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Driver not ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_m2m_dev*, %struct.v4l2_m2m_ctx*)* @__v4l2_m2m_try_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__v4l2_m2m_try_queue(%struct.v4l2_m2m_dev* %0, %struct.v4l2_m2m_ctx* %1) #0 {
  %3 = alloca %struct.v4l2_m2m_dev*, align 8
  %4 = alloca %struct.v4l2_m2m_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.v4l2_m2m_dev* %0, %struct.v4l2_m2m_dev** %3, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %4, align 8
  %8 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %9 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.v4l2_m2m_ctx* %8)
  %10 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16, %2
  %24 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %147

25:                                               ; preds = %16
  %26 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %27 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TRANS_ABORT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %142

38:                                               ; preds = %25
  %39 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TRANS_QUEUED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %142

47:                                               ; preds = %38
  %48 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = call i64 @list_empty(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %136

66:                                               ; preds = %58, %47
  %67 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = call i64 @list_empty(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %130

85:                                               ; preds = %77, %66
  %86 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %87 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %92 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %97 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %96, i32 0, i32 2
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32 (i32)*, i32 (i32)** %99, align 8
  %101 = icmp ne i32 (i32)* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %85
  %103 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %104 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %103, i32 0, i32 2
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32 (i32)*, i32 (i32)** %106, align 8
  %108 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %109 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 %107(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %102
  %114 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %142

115:                                              ; preds = %102, %85
  %116 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %117 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %116, i32 0, i32 3
  %118 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %119 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %118, i32 0, i32 1
  %120 = call i32 @list_add_tail(i32* %117, i32* %119)
  %121 = load i32, i32* @TRANS_QUEUED, align 4
  %122 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %123 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %127 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %126, i32 0, i32 0
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  br label %147

130:                                              ; preds = %83
  %131 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %132 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  br label %136

136:                                              ; preds = %130, %64
  %137 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %138 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  br label %142

142:                                              ; preds = %136, %113, %45, %36
  %143 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %144 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %143, i32 0, i32 0
  %145 = load i64, i64* %5, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  br label %147

147:                                              ; preds = %142, %115, %23
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
