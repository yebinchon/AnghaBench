; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-yuv.c_ivtv_yuv_work_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-yuv.c_ivtv_yuv_work_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32, i32, %struct.yuv_frame_info, i32, i32, i64, i64, i64, %struct.yuv_frame_info* }
%struct.yuv_frame_info = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Update yuv registers for frame %d\0A\00", align 1
@IVTV_YUV_UPDATE_INVALID = common dso_local global i32 0, align 4
@IVTV_YUV_UPDATE_HORIZONTAL = common dso_local global i32 0, align 4
@IVTV_YUV_UPDATE_VERTICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_yuv_work_handler(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.yuv_playback_info*, align 8
  %4 = alloca %struct.yuv_frame_info, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %7 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %8 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %7, i32 0, i32 0
  store %struct.yuv_playback_info* %8, %struct.yuv_playback_info** %3, align 8
  %9 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %10 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %15 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %14, i32 0, i32 8
  %16 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %16, i64 %18
  %20 = bitcast %struct.yuv_frame_info* %4 to i8*
  %21 = bitcast %struct.yuv_frame_info* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %23 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %28 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %4, i32 0, i32 3
  store i64 %29, i64* %30, align 8
  %31 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %32 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %4, i32 0, i32 2
  store i64 %33, i64* %34, align 8
  %35 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %36 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %4, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %40 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %4, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  br label %51

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %4, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %4, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %4, i32 0, i32 0
  store i32 720, i32* %46, align 8
  %47 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %48 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %4, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %26
  %52 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %53 = call i32 @ivtv_yuv_window_setup(%struct.ivtv* %52, %struct.yuv_frame_info* %4)
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %90

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @IVTV_YUV_UPDATE_INVALID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @write_reg(i32 16810112, i32 10392)
  br label %85

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = call i32 @write_reg(i32 1081472, i32 10392)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @IVTV_YUV_UPDATE_HORIZONTAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %74 = call i32 @ivtv_yuv_handle_horizontal(%struct.ivtv* %73, %struct.yuv_frame_info* %4)
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @IVTV_YUV_UPDATE_VERTICAL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %82 = call i32 @ivtv_yuv_handle_vertical(%struct.ivtv* %81, %struct.yuv_frame_info* %4)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %63
  br label %85

85:                                               ; preds = %84, %61
  %86 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %87 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %86, i32 0, i32 2
  %88 = bitcast %struct.yuv_frame_info* %87 to i8*
  %89 = bitcast %struct.yuv_frame_info* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 24, i1 false)
  br label %90

90:                                               ; preds = %85, %55
  ret void
}

declare dso_local i32 @IVTV_DEBUG_YUV(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ivtv_yuv_window_setup(%struct.ivtv*, %struct.yuv_frame_info*) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @ivtv_yuv_handle_horizontal(%struct.ivtv*, %struct.yuv_frame_info*) #1

declare dso_local i32 @ivtv_yuv_handle_vertical(%struct.ivtv*, %struct.yuv_frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
