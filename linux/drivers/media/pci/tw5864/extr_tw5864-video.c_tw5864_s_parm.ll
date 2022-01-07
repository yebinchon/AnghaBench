; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_s_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.tw5864_input = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @tw5864_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.tw5864_input*, align 8
  %9 = alloca %struct.v4l2_fract*, align 8
  %10 = alloca %struct.v4l2_fract, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.tw5864_input* @video_drvdata(%struct.file* %12)
  store %struct.tw5864_input* %13, %struct.tw5864_input** %8, align 8
  %14 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.v4l2_fract* %17, %struct.v4l2_fract** %9, align 8
  %18 = load %struct.tw5864_input*, %struct.tw5864_input** %8, align 8
  %19 = call i32 @tw5864_frameinterval_get(%struct.tw5864_input* %18, %struct.v4l2_fract* %10)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %95

24:                                               ; preds = %3
  %25 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %26 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %31 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %29, %24
  %35 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tw5864_input*, %struct.tw5864_input** %8, align 8
  %38 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %42 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %72

47:                                               ; preds = %29
  %48 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %49 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %57, %59
  %61 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %60, %63
  %65 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %66 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %70 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %54, %47
  br label %72

72:                                               ; preds = %71, %34
  %73 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %74 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %75, %77
  %79 = load %struct.tw5864_input*, %struct.tw5864_input** %8, align 8
  %80 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.tw5864_input*, %struct.tw5864_input** %8, align 8
  %82 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = load %struct.tw5864_input*, %struct.tw5864_input** %8, align 8
  %87 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %72
  %89 = load %struct.tw5864_input*, %struct.tw5864_input** %8, align 8
  %90 = call i32 @tw5864_frame_interval_set(%struct.tw5864_input* %89)
  %91 = load %struct.file*, %struct.file** %5, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %94 = call i32 @tw5864_g_parm(%struct.file* %91, i8* %92, %struct.v4l2_streamparm* %93)
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %88, %22
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.tw5864_input* @video_drvdata(%struct.file*) #1

declare dso_local i32 @tw5864_frameinterval_get(%struct.tw5864_input*, %struct.v4l2_fract*) #1

declare dso_local i32 @tw5864_frame_interval_set(%struct.tw5864_input*) #1

declare dso_local i32 @tw5864_g_parm(%struct.file*, i8*, %struct.v4l2_streamparm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
