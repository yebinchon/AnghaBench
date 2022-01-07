; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.vsp1_video = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @vsp1_video_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_video_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.vsp1_video*, align 8
  %13 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = call %struct.vsp1_video* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.vsp1_video* %16, %struct.vsp1_video** %12, align 8
  %17 = load %struct.vsp1_video*, %struct.vsp1_video** %12, align 8
  %18 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %20, %struct.v4l2_pix_format_mplane** %13, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %5
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %91

34:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %14, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ult i32 %45, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %91

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %14, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %35

62:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %91

63:                                               ; preds = %5
  %64 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %87, %63
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %71 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %14, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %68

90:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %62, %55, %31
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local %struct.vsp1_video* @vb2_get_drv_priv(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
