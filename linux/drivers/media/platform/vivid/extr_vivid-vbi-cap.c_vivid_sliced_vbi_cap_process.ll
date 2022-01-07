; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vivid_sliced_vbi_cap_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vivid_sliced_vbi_cap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i64, i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.v4l2_sliced_vbi_data* }
%struct.v4l2_sliced_vbi_data = type { i32 }
%struct.vivid_buffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_sliced_vbi_cap_process(%struct.vivid_dev* %0, %struct.vivid_buffer* %1) #0 {
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca %struct.vivid_buffer*, align 8
  %5 = alloca %struct.v4l2_sliced_vbi_data*, align 8
  %6 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  store %struct.vivid_buffer* %1, %struct.vivid_buffer** %4, align 8
  %7 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = call %struct.v4l2_sliced_vbi_data* @vb2_plane_vaddr(i32* %9, i32 0)
  store %struct.v4l2_sliced_vbi_data* %10, %struct.v4l2_sliced_vbi_data** %5, align 8
  %11 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %18 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %30 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vivid_sliced_vbi_cap_fill(%struct.vivid_dev* %29, i32 %33)
  %35 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %36 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = call i32 @vb2_plane_size(i32* %38, i32 0)
  %40 = call i32 @memset(%struct.v4l2_sliced_vbi_data* %35, i32 0, i32 %39)
  %41 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %42 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %45 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @VIVID_INVALID_SIGNAL(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %69, %51
  %53 = load i32, i32* %6, align 4
  %54 = icmp ult i32 %53, 25
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %56, i64 %58
  %60 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %61 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %63, i64 %65
  %67 = bitcast %struct.v4l2_sliced_vbi_data* %59 to i8*
  %68 = bitcast %struct.v4l2_sliced_vbi_data* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %52

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72, %28
  ret void
}

declare dso_local %struct.v4l2_sliced_vbi_data* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @vivid_sliced_vbi_cap_fill(%struct.vivid_dev*, i32) #1

declare dso_local i32 @memset(%struct.v4l2_sliced_vbi_data*, i32, i32) #1

declare dso_local i32 @vb2_plane_size(i32*, i32) #1

declare dso_local i32 @VIVID_INVALID_SIGNAL(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
