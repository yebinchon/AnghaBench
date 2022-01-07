; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_vid_out_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_vid_out_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.vivid_dev = type { %struct.v4l2_dv_timings, i32 }

@ENODATA = common dso_local global i32 0, align 4
@vivid_dv_timings_cap = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_vid_out_s_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
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
  %12 = call i32 @vivid_is_hdmi_out(%struct.vivid_dev* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %51

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
  br label %51

28:                                               ; preds = %21, %17
  %29 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 0
  %32 = call i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %29, %struct.v4l2_dv_timings* %31, i32 0, i32 1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %51

35:                                               ; preds = %28
  %36 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %37 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %36, i32 0, i32 1
  %38 = call i64 @vb2_is_busy(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %51

43:                                               ; preds = %35
  %44 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %45 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %44, i32 0, i32 0
  %46 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %47 = bitcast %struct.v4l2_dv_timings* %45 to i8*
  %48 = bitcast %struct.v4l2_dv_timings* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %50 = call i32 @vivid_update_format_out(%struct.vivid_dev* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %40, %34, %25, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vivid_is_hdmi_out(%struct.vivid_dev*) #1

declare dso_local i32 @v4l2_find_dv_timings_cap(%struct.v4l2_dv_timings*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @valid_cvt_gtf_timings(%struct.v4l2_dv_timings*) #1

declare dso_local i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings*, %struct.v4l2_dv_timings*, i32, i32) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vivid_update_format_out(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
