; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.tm6000_fh* }
%struct.tm6000_fh = type { i32, i32, i32, %struct.tm6000_core* }
%struct.tm6000_core = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.video_device = type { i32 }

@V4L2_DEBUG_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"tm6000: close called (dev=%s, users=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @tm6000_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm6000_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.tm6000_fh*, align 8
  %4 = alloca %struct.tm6000_core*, align 8
  %5 = alloca %struct.video_device*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.tm6000_fh*, %struct.tm6000_fh** %7, align 8
  store %struct.tm6000_fh* %8, %struct.tm6000_fh** %3, align 8
  %9 = load %struct.tm6000_fh*, %struct.tm6000_fh** %3, align 8
  %10 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %9, i32 0, i32 3
  %11 = load %struct.tm6000_core*, %struct.tm6000_core** %10, align 8
  store %struct.tm6000_core* %11, %struct.tm6000_core** %4, align 8
  %12 = load %struct.file*, %struct.file** %2, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file* %12)
  store %struct.video_device* %13, %struct.video_device** %5, align 8
  %14 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %15 = load i32, i32* @V4L2_DEBUG_OPEN, align 4
  %16 = load %struct.video_device*, %struct.video_device** %5, align 8
  %17 = call i32 @video_device_node_name(%struct.video_device* %16)
  %18 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %19 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dprintk(%struct.tm6000_core* %14, i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %23 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %26 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %30 = load %struct.tm6000_fh*, %struct.tm6000_fh** %3, align 8
  %31 = call i32 @res_free(%struct.tm6000_core* %29, %struct.tm6000_fh* %30)
  %32 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %33 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %80, label %36

36:                                               ; preds = %1
  %37 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %38 = call i32 @tm6000_uninit_isoc(%struct.tm6000_core* %37)
  %39 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %40 = call i32 @tm6000_ir_int_stop(%struct.tm6000_core* %39)
  %41 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %42 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @usb_reset_configuration(i32 %43)
  %45 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %46 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %36
  %51 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %52 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %55 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usb_set_interface(i32 %53, i32 %57, i32 2)
  br label %68

59:                                               ; preds = %36
  %60 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %61 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %64 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usb_set_interface(i32 %62, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %59, %50
  %69 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %70 = call i32 @tm6000_ir_int_start(%struct.tm6000_core* %69)
  %71 = load %struct.tm6000_fh*, %struct.tm6000_fh** %3, align 8
  %72 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = load %struct.tm6000_fh*, %struct.tm6000_fh** %3, align 8
  %77 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %76, i32 0, i32 1
  %78 = call i32 @videobuf_mmap_free(i32* %77)
  br label %79

79:                                               ; preds = %75, %68
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.tm6000_fh*, %struct.tm6000_fh** %3, align 8
  %82 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %81, i32 0, i32 0
  %83 = call i32 @v4l2_fh_del(i32* %82)
  %84 = load %struct.tm6000_fh*, %struct.tm6000_fh** %3, align 8
  %85 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %84, i32 0, i32 0
  %86 = call i32 @v4l2_fh_exit(i32* %85)
  %87 = load %struct.tm6000_fh*, %struct.tm6000_fh** %3, align 8
  %88 = call i32 @kfree(%struct.tm6000_fh* %87)
  %89 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %90 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  ret i32 0
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @dprintk(%struct.tm6000_core*, i32, i8*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @res_free(%struct.tm6000_core*, %struct.tm6000_fh*) #1

declare dso_local i32 @tm6000_uninit_isoc(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_ir_int_stop(%struct.tm6000_core*) #1

declare dso_local i32 @usb_reset_configuration(i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @tm6000_ir_int_start(%struct.tm6000_core*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @kfree(%struct.tm6000_fh*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
