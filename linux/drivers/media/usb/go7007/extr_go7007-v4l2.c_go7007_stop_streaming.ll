; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_go7007_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_go7007_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.go7007 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@GO7007_BOARDID_ADS_USBAV_709 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @go7007_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @go7007_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca i64, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = call %struct.go7007* @vb2_get_drv_priv(%struct.vb2_queue* %5)
  store %struct.go7007* %6, %struct.go7007** %3, align 8
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %8 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.go7007*, %struct.go7007** %3, align 8
  %10 = call i32 @go7007_stream_stop(%struct.go7007* %9)
  %11 = load %struct.go7007*, %struct.go7007** %3, align 8
  %12 = getelementptr inbounds %struct.go7007, %struct.go7007* %11, i32 0, i32 8
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.go7007*, %struct.go7007** %3, align 8
  %15 = call i32 @go7007_reset_encoder(%struct.go7007* %14)
  %16 = load %struct.go7007*, %struct.go7007** %3, align 8
  %17 = getelementptr inbounds %struct.go7007, %struct.go7007* %16, i32 0, i32 8
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.go7007*, %struct.go7007** %3, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 7
  %21 = load i32, i32* @video, align 4
  %22 = load i32, i32* @s_stream, align 4
  %23 = call i32 @call_all(i32* %20, i32 %21, i32 %22, i32 0)
  %24 = load %struct.go7007*, %struct.go7007** %3, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 5
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.go7007*, %struct.go7007** %3, align 8
  %29 = getelementptr inbounds %struct.go7007, %struct.go7007* %28, i32 0, i32 6
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.go7007*, %struct.go7007** %3, align 8
  %32 = getelementptr inbounds %struct.go7007, %struct.go7007* %31, i32 0, i32 5
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.go7007*, %struct.go7007** %3, align 8
  %36 = getelementptr inbounds %struct.go7007, %struct.go7007* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @v4l2_ctrl_grab(i32 %37, i32 0)
  %39 = load %struct.go7007*, %struct.go7007** %3, align 8
  %40 = getelementptr inbounds %struct.go7007, %struct.go7007* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @v4l2_ctrl_grab(i32 %41, i32 0)
  %43 = load %struct.go7007*, %struct.go7007** %3, align 8
  %44 = getelementptr inbounds %struct.go7007, %struct.go7007* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @v4l2_ctrl_grab(i32 %45, i32 0)
  %47 = load %struct.go7007*, %struct.go7007** %3, align 8
  %48 = getelementptr inbounds %struct.go7007, %struct.go7007* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @v4l2_ctrl_grab(i32 %49, i32 0)
  %51 = load %struct.go7007*, %struct.go7007** %3, align 8
  %52 = getelementptr inbounds %struct.go7007, %struct.go7007* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GO7007_BOARDID_ADS_USBAV_709, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %1
  %57 = load %struct.go7007*, %struct.go7007** %3, align 8
  %58 = call i32 @go7007_write_addr(%struct.go7007* %57, i32 15490, i32 13)
  br label %59

59:                                               ; preds = %56, %1
  ret void
}

declare dso_local %struct.go7007* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @go7007_stream_stop(%struct.go7007*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @go7007_reset_encoder(%struct.go7007*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @call_all(i32*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @v4l2_ctrl_grab(i32, i32) #1

declare dso_local i32 @go7007_write_addr(%struct.go7007*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
