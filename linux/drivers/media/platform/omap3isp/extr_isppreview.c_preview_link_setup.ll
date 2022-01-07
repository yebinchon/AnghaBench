; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.isp_prev_device = type { i32, i8* }

@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@PREVIEW_INPUT_CCDC = common dso_local global i8* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@PREVIEW_INPUT_MEMORY = common dso_local global i8* null, align 8
@PREVIEW_INPUT_NONE = common dso_local global i8* null, align 8
@PREVIEW_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@PREVIEW_OUTPUT_RESIZER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @preview_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preview_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.isp_prev_device*, align 8
  %12 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %6, align 8
  store %struct.media_pad* %1, %struct.media_pad** %7, align 8
  store %struct.media_pad* %2, %struct.media_pad** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %14 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %13)
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %10, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %16 = call %struct.isp_prev_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.isp_prev_device* %16, %struct.isp_prev_device** %11, align 8
  %17 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %18 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %21 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @is_media_entity_v4l2_subdev(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = or i32 %26, 131072
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %25, %4
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %150 [
    i32 129, label %30
    i32 131201, label %60
    i32 128, label %90
    i32 131200, label %120
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %37 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** @PREVIEW_INPUT_CCDC, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %154

44:                                               ; preds = %35
  %45 = load i8*, i8** @PREVIEW_INPUT_MEMORY, align 8
  %46 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %47 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %59

48:                                               ; preds = %30
  %49 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %50 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** @PREVIEW_INPUT_MEMORY, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i8*, i8** @PREVIEW_INPUT_NONE, align 8
  %56 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %57 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %58, %44
  br label %153

60:                                               ; preds = %28
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %67 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** @PREVIEW_INPUT_MEMORY, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %154

74:                                               ; preds = %65
  %75 = load i8*, i8** @PREVIEW_INPUT_CCDC, align 8
  %76 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %77 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %89

78:                                               ; preds = %60
  %79 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %80 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** @PREVIEW_INPUT_CCDC, align 8
  %83 = icmp eq i8* %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i8*, i8** @PREVIEW_INPUT_NONE, align 8
  %86 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %87 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %78
  br label %89

89:                                               ; preds = %88, %74
  br label %153

90:                                               ; preds = %28
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %97 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PREVIEW_OUTPUT_MEMORY, align 4
  %100 = xor i32 %99, -1
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %154

106:                                              ; preds = %95
  %107 = load i32, i32* @PREVIEW_OUTPUT_MEMORY, align 4
  %108 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %109 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %119

112:                                              ; preds = %90
  %113 = load i32, i32* @PREVIEW_OUTPUT_MEMORY, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %116 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %112, %106
  br label %153

120:                                              ; preds = %28
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %120
  %126 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %127 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @PREVIEW_OUTPUT_RESIZER, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load i32, i32* @EBUSY, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %154

136:                                              ; preds = %125
  %137 = load i32, i32* @PREVIEW_OUTPUT_RESIZER, align 4
  %138 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %139 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %149

142:                                              ; preds = %120
  %143 = load i32, i32* @PREVIEW_OUTPUT_RESIZER, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.isp_prev_device*, %struct.isp_prev_device** %11, align 8
  %146 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %142, %136
  br label %153

150:                                              ; preds = %28
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %154

153:                                              ; preds = %149, %119, %89, %59
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %153, %150, %133, %103, %71, %41
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.isp_prev_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_media_entity_v4l2_subdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
