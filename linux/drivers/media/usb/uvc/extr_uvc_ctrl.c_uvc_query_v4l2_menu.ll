; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_query_v4l2_menu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_query_v4l2_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }
%struct.v4l2_querymenu = type { i64, i32, i8* }
%struct.uvc_menu_info = type { i32, i32 }
%struct.uvc_control_mapping = type { i64, i64, i64, i32 (%struct.uvc_control_mapping*, i32, i32)*, %struct.uvc_menu_info* }
%struct.uvc_control = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_TYPE_BITMASK = common dso_local global i64 0, align 8
@UVC_CTRL_FLAG_GET_RES = common dso_local global i32 0, align 4
@UVC_GET_RES = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_RES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_query_v4l2_menu(%struct.uvc_video_chain* %0, %struct.v4l2_querymenu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.v4l2_querymenu*, align 8
  %6 = alloca %struct.uvc_menu_info*, align 8
  %7 = alloca %struct.uvc_control_mapping*, align 8
  %8 = alloca %struct.uvc_control*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.v4l2_querymenu* %1, %struct.v4l2_querymenu** %5, align 8
  %13 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %9, align 8
  %17 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %21 = call i32 @memset(%struct.v4l2_querymenu* %20, i32 0, i32 24)
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %30 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock_interruptible(i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @ERESTARTSYS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %132

37:                                               ; preds = %2
  %38 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %39 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain* %38, i8* %41, %struct.uvc_control_mapping** %7)
  store %struct.uvc_control* %42, %struct.uvc_control** %8, align 8
  %43 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %44 = icmp eq %struct.uvc_control* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %47 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %37
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  br label %127

54:                                               ; preds = %45
  %55 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %59 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp uge i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %127

65:                                               ; preds = %54
  %66 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %67 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %66, i32 0, i32 4
  %68 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %67, align 8
  %69 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %68, i64 %71
  store %struct.uvc_menu_info* %72, %struct.uvc_menu_info** %6, align 8
  %73 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %74 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UVC_CTRL_DATA_TYPE_BITMASK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %119

78:                                               ; preds = %65
  %79 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %80 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @UVC_CTRL_FLAG_GET_RES, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %78
  %87 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %88 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %93 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %94 = call i32 @uvc_ctrl_populate_cache(%struct.uvc_video_chain* %92, %struct.uvc_control* %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %127

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %86
  %100 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %101 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %100, i32 0, i32 3
  %102 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %101, align 8
  %103 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %104 = load i32, i32* @UVC_GET_RES, align 4
  %105 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %106 = load i32, i32* @UVC_CTRL_DATA_RES, align 4
  %107 = call i32 @uvc_ctrl_data(%struct.uvc_control* %105, i32 %106)
  %108 = call i32 %102(%struct.uvc_control_mapping* %103, i32 %104, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %6, align 8
  %111 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %99
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %11, align 4
  br label %127

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %118, %78, %65
  %120 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %121 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %6, align 8
  %124 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @strscpy(i32 %122, i32 %125, i32 4)
  br label %127

127:                                              ; preds = %119, %115, %97, %62, %51
  %128 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %129 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %34
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @memset(%struct.v4l2_querymenu*, i32, i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain*, i8*, %struct.uvc_control_mapping**) #1

declare dso_local i32 @uvc_ctrl_populate_cache(%struct.uvc_video_chain*, %struct.uvc_control*) #1

declare dso_local i32 @uvc_ctrl_data(%struct.uvc_control*, i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
