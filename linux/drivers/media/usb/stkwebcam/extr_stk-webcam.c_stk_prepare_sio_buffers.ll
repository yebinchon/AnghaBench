; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_prepare_sio_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_prepare_sio_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"sio_bufs already allocated\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk_camera*, i32)* @stk_prepare_sio_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_prepare_sio_buffers(%struct.stk_camera* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stk_camera*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stk_camera* %0, %struct.stk_camera** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %8 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %56

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kcalloc(i32 %14, i32 4, i32 %15)
  %17 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %18 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %20 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @stk_setup_siobuf(%struct.stk_camera* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %38 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi i32 [ 0, %41 ], [ %44, %42 ]
  store i32 %46, i32* %3, align 4
  br label %57

47:                                               ; preds = %31
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %51 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %27

55:                                               ; preds = %27
  br label %56

56:                                               ; preds = %55, %11
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %45, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @stk_setup_siobuf(%struct.stk_camera*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
