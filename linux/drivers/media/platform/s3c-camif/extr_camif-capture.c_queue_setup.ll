; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.camif_vp = type { %struct.camif_fmt*, %struct.camif_frame }
%struct.camif_fmt = type { i32 }
%struct.camif_frame = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"size: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.camif_vp*, align 8
  %13 = alloca %struct.camif_frame*, align 8
  %14 = alloca %struct.camif_fmt*, align 8
  %15 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %17 = call %struct.camif_vp* @vb2_get_drv_priv(%struct.vb2_queue* %16)
  store %struct.camif_vp* %17, %struct.camif_vp** %12, align 8
  %18 = load %struct.camif_vp*, %struct.camif_vp** %12, align 8
  %19 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %18, i32 0, i32 1
  store %struct.camif_frame* %19, %struct.camif_frame** %13, align 8
  %20 = load %struct.camif_vp*, %struct.camif_vp** %12, align 8
  %21 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %20, i32 0, i32 0
  %22 = load %struct.camif_fmt*, %struct.camif_fmt** %21, align 8
  store %struct.camif_fmt* %22, %struct.camif_fmt** %14, align 8
  %23 = load %struct.camif_fmt*, %struct.camif_fmt** %14, align 8
  %24 = icmp eq %struct.camif_fmt* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %65

28:                                               ; preds = %5
  %29 = load %struct.camif_frame*, %struct.camif_frame** %13, align 8
  %30 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.camif_frame*, %struct.camif_frame** %13, align 8
  %33 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load %struct.camif_fmt*, %struct.camif_fmt** %14, align 8
  %37 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = sdiv i32 %39, 8
  store i32 %40, i32* %15, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %28
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 0, %53 ]
  store i32 %55, i32* %6, align 4
  br label %65

56:                                               ; preds = %28
  %57 = load i32*, i32** %9, align 8
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %56, %54, %25
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.camif_vp* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
