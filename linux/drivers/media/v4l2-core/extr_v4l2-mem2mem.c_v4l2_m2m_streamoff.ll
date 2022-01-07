; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_streamoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_m2m_ctx = type { i32, i32, i32, %struct.v4l2_m2m_dev* }
%struct.v4l2_m2m_dev = type { i32, %struct.v4l2_m2m_ctx* }
%struct.v4l2_m2m_queue_ctx = type { i32, i64, i32, i32 }

@TRANS_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_m2m_streamoff(%struct.file* %0, %struct.v4l2_m2m_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.v4l2_m2m_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_m2m_dev*, align 8
  %9 = alloca %struct.v4l2_m2m_queue_ctx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %6, align 8
  %14 = call i32 @v4l2_m2m_cancel_job(%struct.v4l2_m2m_ctx* %13)
  %15 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.v4l2_m2m_queue_ctx* @get_queue_ctx(%struct.v4l2_m2m_ctx* %15, i32 %16)
  store %struct.v4l2_m2m_queue_ctx* %17, %struct.v4l2_m2m_queue_ctx** %9, align 8
  %18 = load %struct.v4l2_m2m_queue_ctx*, %struct.v4l2_m2m_queue_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx* %18, i32 0, i32 3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vb2_streamoff(i32* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %76

26:                                               ; preds = %3
  %27 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %27, i32 0, i32 3
  %29 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %28, align 8
  store %struct.v4l2_m2m_dev* %29, %struct.v4l2_m2m_dev** %8, align 8
  %30 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TRANS_QUEUED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %41, i32 0, i32 2
  %43 = call i32 @list_del(i32* %42)
  br label %44

44:                                               ; preds = %40, %26
  %45 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.v4l2_m2m_queue_ctx*, %struct.v4l2_m2m_queue_ctx** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx* %47, i32 0, i32 0
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.v4l2_m2m_queue_ctx*, %struct.v4l2_m2m_queue_ctx** %9, align 8
  %52 = getelementptr inbounds %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx* %51, i32 0, i32 2
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.v4l2_m2m_queue_ctx*, %struct.v4l2_m2m_queue_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.v4l2_m2m_queue_ctx*, %struct.v4l2_m2m_queue_ctx** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx* %56, i32 0, i32 0
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %60, i32 0, i32 1
  %62 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %61, align 8
  %63 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %6, align 8
  %64 = icmp eq %struct.v4l2_m2m_ctx* %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %44
  %66 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %66, i32 0, i32 1
  store %struct.v4l2_m2m_ctx* null, %struct.v4l2_m2m_ctx** %67, align 8
  %68 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %68, i32 0, i32 1
  %70 = call i32 @wake_up(i32* %69)
  br label %71

71:                                               ; preds = %65, %44
  %72 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %8, align 8
  %73 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %24
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @v4l2_m2m_cancel_job(%struct.v4l2_m2m_ctx*) #1

declare dso_local %struct.v4l2_m2m_queue_ctx* @get_queue_ctx(%struct.v4l2_m2m_ctx*, i32) #1

declare dso_local i32 @vb2_streamoff(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
