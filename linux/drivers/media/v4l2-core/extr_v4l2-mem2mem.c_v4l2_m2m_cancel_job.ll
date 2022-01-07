; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_cancel_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_cancel_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_m2m_ctx = type { i32, i32, i32, i32, %struct.v4l2_m2m_dev* }
%struct.v4l2_m2m_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@TRANS_ABORT = common dso_local global i32 0, align 4
@TRANS_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"m2m_ctx %p running, will wait to complete\0A\00", align 1
@TRANS_QUEUED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"m2m_ctx: %p had been on queue and was removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_m2m_ctx*)* @v4l2_m2m_cancel_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_m2m_cancel_job(%struct.v4l2_m2m_ctx* %0) #0 {
  %2 = alloca %struct.v4l2_m2m_ctx*, align 8
  %3 = alloca %struct.v4l2_m2m_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.v4l2_m2m_ctx* %0, %struct.v4l2_m2m_ctx** %2, align 8
  %5 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %5, i32 0, i32 4
  %7 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %6, align 8
  store %struct.v4l2_m2m_dev* %7, %struct.v4l2_m2m_dev** %3, align 8
  %8 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @TRANS_ABORT, align 4
  %13 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TRANS_RUNNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %1
  %24 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %29 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = icmp ne i32 (i32)* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %23
  %35 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %36 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %39(i32 %42)
  br label %44

44:                                               ; preds = %34, %23
  %45 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %46 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.v4l2_m2m_ctx* %45)
  %47 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TRANS_RUNNING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @wait_event(i32 %49, i32 %57)
  br label %90

59:                                               ; preds = %1
  %60 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TRANS_QUEUED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %67, i32 0, i32 1
  %69 = call i32 @list_del(i32* %68)
  %70 = load i32, i32* @TRANS_QUEUED, align 4
  %71 = load i32, i32* @TRANS_RUNNING, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %75 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %79 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %83 = call i32 @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.v4l2_m2m_ctx* %82)
  br label %89

84:                                               ; preds = %59
  %85 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %86 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %85, i32 0, i32 0
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %84, %66
  br label %90

90:                                               ; preds = %89, %44
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dprintk(i8*, %struct.v4l2_m2m_ctx*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
