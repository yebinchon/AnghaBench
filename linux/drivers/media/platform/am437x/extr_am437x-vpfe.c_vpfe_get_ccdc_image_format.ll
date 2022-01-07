; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_get_ccdc_image_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_get_ccdc_image_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@CCDC_FRMFMT_PROGRESSIVE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@CCDC_BUFTYPE_FLD_INTERLEAVED = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@CCDC_BUFTYPE_FLD_SEPARATED = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid buf_type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid frm_fmt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*, %struct.v4l2_format*)* @vpfe_get_ccdc_image_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_get_ccdc_image_format(%struct.vpfe_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpfe_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_rect, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %9 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %10 = call i32 @memset(%struct.v4l2_format* %9, i32 0, i32 28)
  %11 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %15 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %14, i32 0, i32 0
  %16 = call i32 @vpfe_ccdc_get_image_window(i32* %15, %struct.v4l2_rect* %6)
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  store i32 %18, i32* %22, align 4
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %30 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %29, i32 0, i32 0
  %31 = call i32 @vpfe_ccdc_get_line_length(i32* %30)
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %40, %45
  %47 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %46, i32* %50, align 4
  %51 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %52 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %51, i32 0, i32 0
  %53 = call i32 @vpfe_ccdc_get_buftype(i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %55 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %54, i32 0, i32 0
  %56 = call i32 @vpfe_ccdc_get_pixel_format(i32* %55)
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  store i32 %56, i32* %60, align 4
  %61 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %62 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %61, i32 0, i32 0
  %63 = call i32 @vpfe_ccdc_get_frame_format(i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %2
  %68 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %69 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i32 %68, i32* %72, align 4
  br label %110

73:                                               ; preds = %2
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @CCDC_BUFTYPE_FLD_INTERLEAVED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i32 %82, i32* %86, align 4
  br label %103

87:                                               ; preds = %77
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @CCDC_BUFTYPE_FLD_SEPARATED, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %93 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i32 %92, i32* %96, align 4
  br label %102

97:                                               ; preds = %87
  %98 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %99 = call i32 @vpfe_err(%struct.vpfe_device* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %111

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %81
  br label %109

104:                                              ; preds = %73
  %105 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %106 = call i32 @vpfe_err(%struct.vpfe_device* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %111

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %67
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %104, %97
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @memset(%struct.v4l2_format*, i32, i32) #1

declare dso_local i32 @vpfe_ccdc_get_image_window(i32*, %struct.v4l2_rect*) #1

declare dso_local i32 @vpfe_ccdc_get_line_length(i32*) #1

declare dso_local i32 @vpfe_ccdc_get_buftype(i32*) #1

declare dso_local i32 @vpfe_ccdc_get_pixel_format(i32*) #1

declare dso_local i32 @vpfe_ccdc_get_frame_format(i32*) #1

declare dso_local i32 @vpfe_err(%struct.vpfe_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
