; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_query_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_query_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }

@UVC_CTRL_CONTROL_TIMEOUT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Failed to query (%s) UVC control %u on unit %u: %d (exp. %u).\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@UVC_GET_CUR = common dso_local global i32 0, align 4
@UVC_VC_REQUEST_ERROR_CODE_CONTROL = common dso_local global i32 0, align 4
@UVC_TRACE_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Control error %u\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_query_ctrl(%struct.uvc_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.uvc_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i8*, i8** %14, align 8
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @UVC_CTRL_CONTROL_TIMEOUT, align 4
  %27 = call i32 @__uvc_query_ctrl(%struct.uvc_device* %19, i32 %20, i32 %21, i32 %22, i32 %23, i8* %24, i32 %25, i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %106

35:                                               ; preds = %7
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @uvc_query_name(i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @uvc_printk(i32 %36, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @EPIPE, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %8, align 4
  br label %106

50:                                               ; preds = %35
  %51 = load i8*, i8** %14, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %18, align 4
  %54 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %55 = load i32, i32* @UVC_GET_CUR, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @UVC_VC_REQUEST_ERROR_CODE_CONTROL, align 4
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* @UVC_CTRL_CONTROL_TIMEOUT, align 4
  %60 = call i32 @__uvc_query_ctrl(%struct.uvc_device* %54, i32 %55, i32 0, i32 %56, i32 %57, i8* %58, i32 1, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i8*, i8** %14, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i8*, i8** %14, align 8
  %66 = bitcast i8* %65 to i32*
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %79

69:                                               ; preds = %50
  %70 = load i32, i32* %16, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %16, align 4
  br label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EPIPE, align 4
  %76 = sub nsw i32 0, %75
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i32 [ %73, %72 ], [ %76, %74 ]
  store i32 %78, i32* %8, align 4
  br label %106

79:                                               ; preds = %50
  %80 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @uvc_trace(i32 %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %17, align 4
  switch i32 %83, label %102 [
    i32 0, label %84
    i32 1, label %87
    i32 2, label %90
    i32 3, label %93
    i32 4, label %96
    i32 5, label %99
    i32 6, label %99
    i32 7, label %99
    i32 8, label %99
  ]

84:                                               ; preds = %79
  %85 = load i32, i32* @EPIPE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %106

87:                                               ; preds = %79
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %106

90:                                               ; preds = %79
  %91 = load i32, i32* @EILSEQ, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %106

93:                                               ; preds = %79
  %94 = load i32, i32* @EREMOTE, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %106

96:                                               ; preds = %79
  %97 = load i32, i32* @ERANGE, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %106

99:                                               ; preds = %79, %79, %79, %79
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %8, align 4
  br label %106

102:                                              ; preds = %79
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* @EPIPE, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103, %99, %96, %93, %90, %87, %84, %77, %48, %34
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local i32 @__uvc_query_ctrl(%struct.uvc_device*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @uvc_printk(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uvc_query_name(i32) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
