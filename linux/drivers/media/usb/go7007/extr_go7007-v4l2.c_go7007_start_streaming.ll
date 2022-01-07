; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_go7007_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_go7007_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.go7007 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32*, i64 }

@EIO = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@GO7007_BOARDID_ADS_USBAV_709 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @go7007_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.go7007*, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = call %struct.go7007* @vb2_get_drv_priv(%struct.vb2_queue* %8)
  store %struct.go7007* %9, %struct.go7007** %6, align 8
  %10 = load %struct.go7007*, %struct.go7007** %6, align 8
  %11 = call i32 @set_formatting(%struct.go7007* %10)
  %12 = load %struct.go7007*, %struct.go7007** %6, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 6
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.go7007*, %struct.go7007** %6, align 8
  %16 = getelementptr inbounds %struct.go7007, %struct.go7007* %15, i32 0, i32 9
  store i64 0, i64* %16, align 8
  %17 = load %struct.go7007*, %struct.go7007** %6, align 8
  %18 = getelementptr inbounds %struct.go7007, %struct.go7007* %17, i32 0, i32 8
  store i32* null, i32** %18, align 8
  %19 = load %struct.go7007*, %struct.go7007** %6, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.go7007*, %struct.go7007** %6, align 8
  %24 = call i64 @go7007_start_encoder(%struct.go7007* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load %struct.go7007*, %struct.go7007** %6, align 8
  %32 = getelementptr inbounds %struct.go7007, %struct.go7007* %31, i32 0, i32 6
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %38 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %72

40:                                               ; preds = %30
  %41 = load %struct.go7007*, %struct.go7007** %6, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 5
  %43 = load i32, i32* @video, align 4
  %44 = load i32, i32* @s_stream, align 4
  %45 = call i32 @call_all(i32* %42, i32 %43, i32 %44, i32 1)
  %46 = load %struct.go7007*, %struct.go7007** %6, align 8
  %47 = getelementptr inbounds %struct.go7007, %struct.go7007* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @v4l2_ctrl_grab(i32 %48, i32 1)
  %50 = load %struct.go7007*, %struct.go7007** %6, align 8
  %51 = getelementptr inbounds %struct.go7007, %struct.go7007* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @v4l2_ctrl_grab(i32 %52, i32 1)
  %54 = load %struct.go7007*, %struct.go7007** %6, align 8
  %55 = getelementptr inbounds %struct.go7007, %struct.go7007* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @v4l2_ctrl_grab(i32 %56, i32 1)
  %58 = load %struct.go7007*, %struct.go7007** %6, align 8
  %59 = getelementptr inbounds %struct.go7007, %struct.go7007* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @v4l2_ctrl_grab(i32 %60, i32 1)
  %62 = load %struct.go7007*, %struct.go7007** %6, align 8
  %63 = getelementptr inbounds %struct.go7007, %struct.go7007* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @GO7007_BOARDID_ADS_USBAV_709, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %40
  %68 = load %struct.go7007*, %struct.go7007** %6, align 8
  %69 = call i32 @go7007_write_addr(%struct.go7007* %68, i32 15490, i32 5)
  br label %70

70:                                               ; preds = %67, %40
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %36
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.go7007* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @set_formatting(%struct.go7007*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @go7007_start_encoder(%struct.go7007*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @call_all(i32*, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_grab(i32, i32) #1

declare dso_local i32 @go7007_write_addr(%struct.go7007*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
