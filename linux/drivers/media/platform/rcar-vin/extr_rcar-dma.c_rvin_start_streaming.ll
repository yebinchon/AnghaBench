; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.rvin_dev = type { i32, i32, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to allocate scratch buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @rvin_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvin_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = call %struct.rvin_dev* @vb2_get_drv_priv(%struct.vb2_queue* %9)
  store %struct.rvin_dev* %10, %struct.rvin_dev** %6, align 8
  %11 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %12 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %15 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %19 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @dma_alloc_coherent(i32 %13, i32 %17, i32* %19, i32 %20)
  %22 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %23 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %25 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %2
  %29 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %30 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %29, i32 0, i32 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %34 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %35 = call i32 @return_all_buffers(%struct.rvin_dev* %33, i32 %34)
  %36 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %37 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %36, i32 0, i32 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %41 = call i32 @vin_err(%struct.rvin_dev* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %103

44:                                               ; preds = %2
  %45 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %46 = call i32 @rvin_set_stream(%struct.rvin_dev* %45, i32 1)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %51 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %50, i32 0, i32 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %55 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %56 = call i32 @return_all_buffers(%struct.rvin_dev* %54, i32 %55)
  %57 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %58 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %57, i32 0, i32 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %83

61:                                               ; preds = %44
  %62 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %63 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %62, i32 0, i32 4
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %67 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %69 = call i32 @rvin_capture_start(%struct.rvin_dev* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %74 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %75 = call i32 @return_all_buffers(%struct.rvin_dev* %73, i32 %74)
  %76 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %77 = call i32 @rvin_set_stream(%struct.rvin_dev* %76, i32 0)
  br label %78

78:                                               ; preds = %72, %61
  %79 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %80 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %79, i32 0, i32 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %78, %49
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %88 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %91 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %95 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rvin_dev*, %struct.rvin_dev** %6, align 8
  %98 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dma_free_coherent(i32 %89, i32 %93, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %86, %83
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %28
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.rvin_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @return_all_buffers(%struct.rvin_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vin_err(%struct.rvin_dev*, i8*) #1

declare dso_local i32 @rvin_set_stream(%struct.rvin_dev*, i32) #1

declare dso_local i32 @rvin_capture_start(%struct.rvin_dev*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
