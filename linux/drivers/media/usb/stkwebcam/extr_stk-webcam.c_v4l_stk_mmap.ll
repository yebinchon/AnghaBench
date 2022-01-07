; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_v4l_stk_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_v4l_stk_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i32, i32*, %struct.stk_sio_buffer* }
%struct.stk_sio_buffer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.stk_camera = type { i32, %struct.stk_sio_buffer* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@stk_v4l_vm_ops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @v4l_stk_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_stk_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.stk_camera*, align 8
  %10 = alloca %struct.stk_sio_buffer*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = shl i64 %13, %14
  store i64 %15, i64* %8, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call %struct.stk_camera* @video_drvdata(%struct.file* %16)
  store %struct.stk_camera* %17, %struct.stk_camera** %9, align 8
  store %struct.stk_sio_buffer* null, %struct.stk_sio_buffer** %10, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VM_WRITE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @VM_SHARED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %100

34:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %62, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %38 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %43 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %42, i32 0, i32 1
  %44 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %44, i64 %46
  %48 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %41
  %55 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %56 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %55, i32 0, i32 1
  %57 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %57, i64 %59
  store %struct.stk_sio_buffer* %60, %struct.stk_sio_buffer** %10, align 8
  br label %65

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %35

65:                                               ; preds = %54, %35
  %66 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %10, align 8
  %67 = icmp eq %struct.stk_sio_buffer* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %100

71:                                               ; preds = %65
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %73 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %10, align 8
  %74 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @remap_vmalloc_range(%struct.vm_area_struct* %72, i32 %75, i32 0)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %100

81:                                               ; preds = %71
  %82 = load i32, i32* @VM_DONTEXPAND, align 4
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %10, align 8
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 3
  store %struct.stk_sio_buffer* %87, %struct.stk_sio_buffer** %89, align 8
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 2
  store i32* @stk_v4l_vm_ops, i32** %91, align 8
  %92 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %93 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %10, align 8
  %94 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 8
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %99 = call i32 @stk_v4l_vm_open(%struct.vm_area_struct* %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %81, %79, %68, %31
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.stk_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @remap_vmalloc_range(%struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @stk_v4l_vm_open(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
