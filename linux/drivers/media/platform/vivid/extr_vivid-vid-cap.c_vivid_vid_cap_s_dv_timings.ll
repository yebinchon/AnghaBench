; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_vid_cap_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_vid_cap_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.vivid_dev = type { i64, %struct.v4l2_dv_timings*, i32 }

@ENODATA = common dso_local global i32 0, align 4
@vivid_dv_timings_cap = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_vid_cap_s_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.vivid_dev* @video_drvdata(%struct.file* %9)
  store %struct.vivid_dev* %10, %struct.vivid_dev** %8, align 8
  %11 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %12 = call i32 @vivid_is_hdmi_cap(%struct.vivid_dev* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %19 = call i32 @v4l2_find_dv_timings_cap(%struct.v4l2_dv_timings* %18, i32* @vivid_dv_timings_cap, i32 0, i32* null, i32* null)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %23 = call i32 @valid_cvt_gtf_timings(%struct.v4l2_dv_timings* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %61

28:                                               ; preds = %21, %17
  %29 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 1
  %32 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %31, align 8
  %33 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %34 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %32, i64 %35
  %37 = call i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %29, %struct.v4l2_dv_timings* %36, i32 0, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %61

40:                                               ; preds = %28
  %41 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %42 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %41, i32 0, i32 2
  %43 = call i64 @vb2_is_busy(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %61

48:                                               ; preds = %40
  %49 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %50 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %49, i32 0, i32 1
  %51 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %50, align 8
  %52 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %53 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %51, i64 %54
  %56 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %57 = bitcast %struct.v4l2_dv_timings* %55 to i8*
  %58 = bitcast %struct.v4l2_dv_timings* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %60 = call i32 @vivid_update_format_cap(%struct.vivid_dev* %59, i32 0)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %48, %45, %39, %25, %14
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vivid_is_hdmi_cap(%struct.vivid_dev*) #1

declare dso_local i32 @v4l2_find_dv_timings_cap(%struct.v4l2_dv_timings*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @valid_cvt_gtf_timings(%struct.v4l2_dv_timings*) #1

declare dso_local i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings*, %struct.v4l2_dv_timings*, i32, i32) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vivid_update_format_cap(%struct.vivid_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
