; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-control.c_get_video_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-control.c_get_video_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i32*, i32, i32, i32 }
%struct.hdpvr_video_info = type { i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_video_info(%struct.hdpvr_device* %0, %struct.hdpvr_video_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdpvr_device*, align 8
  %5 = alloca %struct.hdpvr_video_info*, align 8
  %6 = alloca i32, align 4
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %4, align 8
  store %struct.hdpvr_video_info* %1, %struct.hdpvr_video_info** %5, align 8
  %7 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %8 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %10 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %13 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %16 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @usb_rcvctrlpipe(i32 %17, i32 0)
  %19 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %20 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @usb_control_msg(i32 %14, i32 %18, i32 129, i32 184, i32 5120, i32 3, i32* %21, i32 5, i32 1000)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %24 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %85

30:                                               ; preds = %2
  %31 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %32 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %38 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %36, %41
  %43 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %44 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %46 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %52 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %50, %55
  %57 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %58 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %60 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %65 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %67 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %30
  %71 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %72 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %77 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %75, %70, %30
  %81 = phi i1 [ false, %70 ], [ false, %30 ], [ %79, %75 ]
  %82 = zext i1 %81 to i32
  %83 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %84 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %28
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
