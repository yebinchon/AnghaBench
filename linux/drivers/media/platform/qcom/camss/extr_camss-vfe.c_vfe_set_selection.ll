; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i64, i32, %struct.v4l2_rect, i32 }
%struct.v4l2_rect = type { i32, i32 }
%struct.vfe_line = type { i64 }
%struct.v4l2_subdev_format = type { %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@VFE_LINE_PIX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_COMPOSE = common dso_local global i64 0, align 8
@MSM_VFE_PAD_SINK = common dso_local global i64 0, align 8
@MSM_VFE_PAD_SRC = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @vfe_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_set_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.vfe_line*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_subdev_selection, align 8
  %12 = alloca %struct.v4l2_subdev_format, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.vfe_line* %14, %struct.vfe_line** %8, align 8
  %15 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %16 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VFE_LINE_PIX, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %149

23:                                               ; preds = %3
  %24 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %23
  %30 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %29
  %36 = bitcast %struct.v4l2_subdev_selection* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 32, i1 false)
  %37 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %38 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %39 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.v4l2_rect* @__vfe_get_compose(%struct.vfe_line* %37, %struct.v4l2_subdev_pad_config* %38, i32 %41)
  store %struct.v4l2_rect* %42, %struct.v4l2_rect** %9, align 8
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %44 = icmp eq %struct.v4l2_rect* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %149

48:                                               ; preds = %35
  %49 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %50 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %51 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %51, i32 0, i32 3
  %53 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @vfe_try_compose(%struct.vfe_line* %49, %struct.v4l2_subdev_pad_config* %50, %struct.v4l2_rect* %52, i32 %55)
  %57 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %58 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %58, i32 0, i32 3
  %60 = bitcast %struct.v4l2_rect* %57 to i8*
  %61 = bitcast %struct.v4l2_rect* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 8, i1 false)
  %62 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %11, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = load i64, i64* @MSM_VFE_PAD_SRC, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %11, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %11, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %11, i32 0, i32 3
  %71 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %72 = bitcast %struct.v4l2_rect* %70 to i8*
  %73 = bitcast %struct.v4l2_rect* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 8, i1 false)
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %75 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %76 = call i32 @vfe_set_selection(%struct.v4l2_subdev* %74, %struct.v4l2_subdev_pad_config* %75, %struct.v4l2_subdev_selection* %11)
  store i32 %76, i32* %10, align 4
  br label %147

77:                                               ; preds = %29, %23
  %78 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %143

83:                                               ; preds = %77
  %84 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MSM_VFE_PAD_SRC, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %143

89:                                               ; preds = %83
  %90 = bitcast %struct.v4l2_subdev_format* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %90, i8 0, i64 24, i1 false)
  %91 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %92 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %93 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.v4l2_rect* @__vfe_get_crop(%struct.vfe_line* %91, %struct.v4l2_subdev_pad_config* %92, i32 %95)
  store %struct.v4l2_rect* %96, %struct.v4l2_rect** %9, align 8
  %97 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %98 = icmp eq %struct.v4l2_rect* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %149

102:                                              ; preds = %89
  %103 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %104 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %105 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %105, i32 0, i32 3
  %107 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @vfe_try_crop(%struct.vfe_line* %103, %struct.v4l2_subdev_pad_config* %104, %struct.v4l2_rect* %106, i32 %109)
  %111 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %112 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %112, i32 0, i32 3
  %114 = bitcast %struct.v4l2_rect* %111 to i8*
  %115 = bitcast %struct.v4l2_rect* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 8, i1 false)
  %116 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 2
  store i32 %118, i32* %119, align 8
  %120 = load i64, i64* @MSM_VFE_PAD_SRC, align 8
  %121 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 1
  store i64 %120, i64* %121, align 8
  %122 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %123 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %124 = call i32 @vfe_get_format(%struct.v4l2_subdev* %122, %struct.v4l2_subdev_pad_config* %123, %struct.v4l2_subdev_format* %12)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %102
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %4, align 4
  br label %149

129:                                              ; preds = %102
  %130 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %131 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %136 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %141 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %142 = call i32 @vfe_set_format(%struct.v4l2_subdev* %140, %struct.v4l2_subdev_pad_config* %141, %struct.v4l2_subdev_format* %12)
  store i32 %142, i32* %10, align 4
  br label %146

143:                                              ; preds = %83, %77
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %143, %129
  br label %147

147:                                              ; preds = %146, %48
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %127, %99, %45, %20
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.v4l2_rect* @__vfe_get_compose(%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @vfe_try_compose(%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_rect*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.v4l2_rect* @__vfe_get_crop(%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @vfe_try_crop(%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_rect*, i32) #1

declare dso_local i32 @vfe_get_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @vfe_set_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
