; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.rvin_dev = type { i64, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@STOPPING = common dso_local global i64 0, align 8
@RVIN_RETRIES = common dso_local global i32 0, align 4
@STOPPED = common dso_local global i64 0, align 8
@RVIN_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed stop HW, something is seriously broken\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @rvin_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvin_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %7 = call %struct.rvin_dev* @vb2_get_drv_priv(%struct.vb2_queue* %6)
  store %struct.rvin_dev* %7, %struct.rvin_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %8, i32 0, i32 5
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i64, i64* @STOPPING, align 8
  %13 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %14 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @RVIN_RETRIES, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %22 = call i32 @rvin_capture_stop(%struct.rvin_dev* %21)
  %23 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %24 = call i32 @rvin_capture_active(%struct.rvin_dev* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* @STOPPED, align 8
  %28 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %41

30:                                               ; preds = %20
  %31 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %32 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %31, i32 0, i32 5
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* @RVIN_TIMEOUT_MS, align 4
  %36 = call i32 @msleep(i32 %35)
  %37 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %38 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %37, i32 0, i32 5
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  br label %15

41:                                               ; preds = %26, %15
  %42 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %43 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @STOPPED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %49 = call i32 @vin_err(%struct.rvin_dev* %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %50 = load i64, i64* @STOPPED, align 8
  %51 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %52 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %55 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %56 = call i32 @return_all_buffers(%struct.rvin_dev* %54, i32 %55)
  %57 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %58 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %57, i32 0, i32 5
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %62 = call i32 @rvin_set_stream(%struct.rvin_dev* %61, i32 0)
  %63 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %64 = call i32 @rvin_disable_interrupts(%struct.rvin_dev* %63)
  %65 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %66 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %69 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %73 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %76 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dma_free_coherent(i32 %67, i32 %71, i32 %74, i32 %77)
  ret void
}

declare dso_local %struct.rvin_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rvin_capture_stop(%struct.rvin_dev*) #1

declare dso_local i32 @rvin_capture_active(%struct.rvin_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @vin_err(%struct.rvin_dev*, i8*) #1

declare dso_local i32 @return_all_buffers(%struct.rvin_dev*, i32) #1

declare dso_local i32 @rvin_set_stream(%struct.rvin_dev*, i32) #1

declare dso_local i32 @rvin_disable_interrupts(%struct.rvin_dev*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
