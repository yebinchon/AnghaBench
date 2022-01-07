; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_reinitialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_reinitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32, i32, i32, %struct.camif_dev* }
%struct.camif_dev = type { i32 }
%struct.camif_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ST_VP_SENSOR_STREAMING = common dso_local global i32 0, align 4
@ST_VP_PENDING = common dso_local global i32 0, align 4
@ST_VP_RUNNING = common dso_local global i32 0, align 4
@ST_VP_OFF = common dso_local global i32 0, align 4
@ST_VP_ABORTING = common dso_local global i32 0, align 4
@ST_VP_STREAMING = common dso_local global i32 0, align 4
@ST_VP_LASTIRQ = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camif_vp*)* @camif_reinitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camif_reinitialize(%struct.camif_vp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camif_vp*, align 8
  %4 = alloca %struct.camif_dev*, align 8
  %5 = alloca %struct.camif_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %3, align 8
  %8 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %9 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %8, i32 0, i32 3
  %10 = load %struct.camif_dev*, %struct.camif_dev** %9, align 8
  store %struct.camif_dev* %10, %struct.camif_dev** %4, align 8
  %11 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %12 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %16 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ST_VP_SENSOR_STREAMING, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @ST_VP_PENDING, align 4
  %21 = load i32, i32* @ST_VP_RUNNING, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ST_VP_OFF, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ST_VP_ABORTING, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ST_VP_STREAMING, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ST_VP_SENSOR_STREAMING, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ST_VP_LASTIRQ, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %35 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %44, %1
  %39 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %40 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %39, i32 0, i32 2
  %41 = call i32 @list_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %46 = call %struct.camif_buffer* @camif_pending_queue_pop(%struct.camif_vp* %45)
  store %struct.camif_buffer* %46, %struct.camif_buffer** %5, align 8
  %47 = load %struct.camif_buffer*, %struct.camif_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.camif_buffer, %struct.camif_buffer* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %51 = call i32 @vb2_buffer_done(i32* %49, i32 %50)
  br label %38

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %59, %52
  %54 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %55 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %54, i32 0, i32 1
  %56 = call i32 @list_empty(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %61 = call %struct.camif_buffer* @camif_active_queue_pop(%struct.camif_vp* %60)
  store %struct.camif_buffer* %61, %struct.camif_buffer** %5, align 8
  %62 = load %struct.camif_buffer*, %struct.camif_buffer** %5, align 8
  %63 = getelementptr inbounds %struct.camif_buffer, %struct.camif_buffer* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %66 = call i32 @vb2_buffer_done(i32* %64, i32 %65)
  br label %53

67:                                               ; preds = %53
  %68 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %69 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %68, i32 0, i32 0
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %78

75:                                               ; preds = %67
  %76 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %77 = call i32 @sensor_set_streaming(%struct.camif_dev* %76, i32 0)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %74
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.camif_buffer* @camif_pending_queue_pop(%struct.camif_vp*) #1

declare dso_local i32 @vb2_buffer_done(i32*, i32) #1

declare dso_local %struct.camif_buffer* @camif_active_queue_pop(%struct.camif_vp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sensor_set_streaming(%struct.camif_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
