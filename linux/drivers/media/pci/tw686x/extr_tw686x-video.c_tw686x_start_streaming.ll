; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.tw686x_video_channel = type { i32, i32, i32, i64, i32, %struct.TYPE_3__*, %struct.tw686x_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.tw686x_dev = type { i64, i32, i32, %struct.TYPE_4__*, i32, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 (%struct.tw686x_video_channel*, i32)* }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@TW686X_DMA_MODE_MEMCPY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"video%d: refusing to start without DMA buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @tw686x_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tw686x_video_channel*, align 8
  %7 = alloca %struct.tw686x_dev*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %13 = call %struct.tw686x_video_channel* @vb2_get_drv_priv(%struct.vb2_queue* %12)
  store %struct.tw686x_video_channel* %13, %struct.tw686x_video_channel** %6, align 8
  %14 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %15 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %14, i32 0, i32 6
  %16 = load %struct.tw686x_dev*, %struct.tw686x_dev** %15, align 8
  store %struct.tw686x_dev* %16, %struct.tw686x_dev** %7, align 8
  %17 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %18 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %17, i32 0, i32 2
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %22 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %21, i32 0, i32 5
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %8, align 8
  %24 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %25 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %24, i32 0, i32 2
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %29 = icmp ne %struct.pci_dev* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %116

33:                                               ; preds = %2
  %34 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %35 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %39 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TW686X_DMA_MODE_MEMCPY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %33
  %44 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %45 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %44, i32 0, i32 5
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %53 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %52, i32 0, i32 5
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %51, %43
  %60 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %61 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %60, i32 0, i32 0
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %65 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %64, i32 0, i32 4
  %66 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %67 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @v4l2_err(i32* %65, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %116

72:                                               ; preds = %51, %33
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %85, %72
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %78 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (%struct.tw686x_video_channel*, i32)*, i32 (%struct.tw686x_video_channel*, i32)** %80, align 8
  %82 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 %81(%struct.tw686x_video_channel* %82, i32 %83)
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %73

88:                                               ; preds = %73
  %89 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %90 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %89, i32 0, i32 0
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %94 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %96 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  %97 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %98 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %97, i32 0, i32 2
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @spin_lock_irqsave(i32* %98, i64 %99)
  %101 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %102 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %103 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @tw686x_enable_channel(%struct.tw686x_dev* %101, i32 %104)
  %106 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %107 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %106, i32 0, i32 2
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %111 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %110, i32 0, i32 1
  %112 = load i64, i64* @jiffies, align 8
  %113 = call i64 @msecs_to_jiffies(i32 100)
  %114 = add nsw i64 %112, %113
  %115 = call i32 @mod_timer(i32* %111, i64 %114)
  store i32 0, i32* %3, align 4
  br label %129

116:                                              ; preds = %59, %30
  %117 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %118 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %117, i32 0, i32 0
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @spin_lock_irqsave(i32* %118, i64 %119)
  %121 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %122 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %123 = call i32 @tw686x_clear_queue(%struct.tw686x_video_channel* %121, i32 %122)
  %124 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %6, align 8
  %125 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %124, i32 0, i32 0
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %116, %88
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.tw686x_video_channel* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @tw686x_enable_channel(%struct.tw686x_dev*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @tw686x_clear_queue(%struct.tw686x_video_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
