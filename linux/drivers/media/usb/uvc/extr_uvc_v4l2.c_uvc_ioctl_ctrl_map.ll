; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_ctrl_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_ctrl_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }
%struct.uvc_xu_control_mapping = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvc_control_mapping = type { i32, i32, %struct.uvc_control_mapping*, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_MAX_CONTROL_MENU_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UVC_TRACE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unsupported V4L2 control type %u.\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_chain*, %struct.uvc_xu_control_mapping*)* @uvc_ioctl_ctrl_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_ctrl_map(%struct.uvc_video_chain* %0, %struct.uvc_xu_control_mapping* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.uvc_xu_control_mapping*, align 8
  %6 = alloca %struct.uvc_control_mapping*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.uvc_xu_control_mapping* %1, %struct.uvc_xu_control_mapping** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.uvc_control_mapping* @kzalloc(i32 48, i32 %9)
  store %struct.uvc_control_mapping* %10, %struct.uvc_control_mapping** %6, align 8
  %11 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %12 = icmp eq %struct.uvc_control_mapping* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %129

16:                                               ; preds = %2
  %17 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %18 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %21 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 8
  %22 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %23 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %26 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32 %24, i32 %27, i32 4)
  %29 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %30 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %33 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %31, i32 %34, i32 4)
  %36 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %37 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %40 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %42 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %45 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %47 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %50 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %52 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %55 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %57 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %60 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %62 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %109 [
    i32 129, label %64
    i32 131, label %64
    i32 130, label %64
    i32 128, label %65
  ]

64:                                               ; preds = %16, %16, %16
  br label %117

65:                                               ; preds = %16
  %66 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %67 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %72 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @UVC_MAX_CONTROL_MENU_ENTRIES, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %65
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %125

79:                                               ; preds = %70
  %80 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %81 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 48
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  %86 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %87 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call %struct.uvc_control_mapping* @memdup_user(i32 %88, i32 %89)
  %91 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %92 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %91, i32 0, i32 2
  store %struct.uvc_control_mapping* %90, %struct.uvc_control_mapping** %92, align 8
  %93 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %94 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %93, i32 0, i32 2
  %95 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %94, align 8
  %96 = call i32 @IS_ERR(%struct.uvc_control_mapping* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %79
  %99 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %100 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %99, i32 0, i32 2
  %101 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %100, align 8
  %102 = call i32 @PTR_ERR(%struct.uvc_control_mapping* %101)
  store i32 %102, i32* %8, align 4
  br label %125

103:                                              ; preds = %79
  %104 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %105 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %108 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %117

109:                                              ; preds = %16
  %110 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %111 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %5, align 8
  %112 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @uvc_trace(i32 %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @ENOTTY, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %125

117:                                              ; preds = %103, %64
  %118 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %119 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %120 = call i32 @uvc_ctrl_add_mapping(%struct.uvc_video_chain* %118, %struct.uvc_control_mapping* %119)
  store i32 %120, i32* %8, align 4
  %121 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %122 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %121, i32 0, i32 2
  %123 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %122, align 8
  %124 = call i32 @kfree(%struct.uvc_control_mapping* %123)
  br label %125

125:                                              ; preds = %117, %109, %98, %76
  %126 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %6, align 8
  %127 = call i32 @kfree(%struct.uvc_control_mapping* %126)
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %13
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.uvc_control_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.uvc_control_mapping* @memdup_user(i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.uvc_control_mapping*) #1

declare dso_local i32 @PTR_ERR(%struct.uvc_control_mapping*) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32) #1

declare dso_local i32 @uvc_ctrl_add_mapping(%struct.uvc_video_chain*, %struct.uvc_control_mapping*) #1

declare dso_local i32 @kfree(%struct.uvc_control_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
