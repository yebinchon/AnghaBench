; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_usbvision_v4l2_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_usbvision_v4l2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.usb_usbvision = type { i32, i32, i64 }

@DBG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@isoc_mode = common dso_local global i64 0, align 8
@ISOC_MODE_COMPRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @usbvision_v4l2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_v4l2_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.usb_usbvision*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.usb_usbvision* @video_drvdata(%struct.file* %7)
  store %struct.usb_usbvision* %8, %struct.usb_usbvision** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @DBG_IO, align 4
  %10 = call i32 @PDEBUG(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %12 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %11, i32 0, i32 1
  %13 = call i64 @mutex_lock_interruptible(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ERESTARTSYS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %96

18:                                               ; preds = %1
  %19 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %20 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %50

26:                                               ; preds = %18
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = call i32 @v4l2_fh_open(%struct.file* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %89

32:                                               ; preds = %26
  %33 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %34 = call i32 @usbvision_scratch_alloc(%struct.usb_usbvision* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i64, i64* @isoc_mode, align 8
  %36 = load i64, i64* @ISOC_MODE_COMPRESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %40 = call i32 @usbvision_decompress_alloc(%struct.usb_usbvision* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %46 = call i32 @usbvision_scratch_free(%struct.usb_usbvision* %45)
  %47 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %48 = call i32 @usbvision_decompress_free(%struct.usb_usbvision* %47)
  br label %49

49:                                               ; preds = %44, %41
  br label %50

50:                                               ; preds = %49, %23
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %88, label %53

53:                                               ; preds = %50
  %54 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %55 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  %59 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %60 = load i64, i64* @isoc_mode, align 8
  %61 = call i32 @usbvision_setup(%struct.usb_usbvision* %59, i64 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %66 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %53
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %71
  %75 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %76 = call i32 @usbvision_begin_streaming(%struct.usb_usbvision* %75)
  %77 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %78 = call i32 @usbvision_init_isoc(%struct.usb_usbvision* %77)
  store i32 %78, i32* %5, align 4
  %79 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %80 = call i32 @usbvision_muxsel(%struct.usb_usbvision* %79, i32 0)
  %81 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %82 = call i32 @usbvision_empty_framequeues(%struct.usb_usbvision* %81)
  %83 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %84 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %74, %71
  br label %88

88:                                               ; preds = %87, %50
  br label %89

89:                                               ; preds = %88, %31
  %90 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %91 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* @DBG_IO, align 4
  %94 = call i32 @PDEBUG(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %89, %15
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.usb_usbvision* @video_drvdata(%struct.file*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @usbvision_scratch_alloc(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_decompress_alloc(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_scratch_free(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_decompress_free(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_setup(%struct.usb_usbvision*, i64) #1

declare dso_local i32 @usbvision_begin_streaming(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_init_isoc(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_muxsel(%struct.usb_usbvision*, i32) #1

declare dso_local i32 @usbvision_empty_framequeues(%struct.usb_usbvision*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
