; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i64, %struct.v4l2_mbus_framefmt* }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.resizer_luma_yenh = type { i32, i32, i32, i32 }

@RESZ_PAD_SINK = common dso_local global i64 0, align 8
@RESZ_PAD_SOURCE = common dso_local global i64 0, align 8
@RESIZER_INPUT_VP = common dso_local global i64 0, align 8
@RSZ_YUV422 = common dso_local global i32 0, align 4
@DEFAULT_PHASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_res_device*)* @resizer_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_configure(%struct.isp_res_device* %0) #0 {
  %2 = alloca %struct.isp_res_device*, align 8
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.resizer_luma_yenh, align 4
  store %struct.isp_res_device* %0, %struct.isp_res_device** %2, align 8
  %6 = bitcast %struct.resizer_luma_yenh* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 16, i1 false)
  %7 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %8 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %9 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @resizer_set_source(%struct.isp_res_device* %7, i64 %10)
  %12 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %13 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %12, i32 0, i32 1
  %14 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %15 = load i64, i64* @RESZ_PAD_SINK, align 8
  %16 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %14, i64 %15
  store %struct.v4l2_mbus_framefmt* %16, %struct.v4l2_mbus_framefmt** %3, align 8
  %17 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %18 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %17, i32 0, i32 1
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %18, align 8
  %20 = load i64, i64* @RESZ_PAD_SOURCE, align 8
  %21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i64 %20
  store %struct.v4l2_mbus_framefmt* %21, %struct.v4l2_mbus_framefmt** %4, align 8
  %22 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %23 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RESIZER_INPUT_VP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %29 = call i32 @resizer_set_input_offset(%struct.isp_res_device* %28, i32 0)
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ALIGN(i32 %34, i32 16)
  %36 = mul nsw i32 %35, 2
  %37 = call i32 @resizer_set_input_offset(%struct.isp_res_device* %31, i32 %36)
  br label %38

38:                                               ; preds = %30, %27
  %39 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %40 = load i32, i32* @RSZ_YUV422, align 4
  %41 = call i32 @resizer_set_intype(%struct.isp_res_device* %39, i32 %40)
  %42 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @resizer_set_ycpos(%struct.isp_res_device* %42, i32 %45)
  %47 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %48 = load i32, i32* @DEFAULT_PHASE, align 4
  %49 = load i32, i32* @DEFAULT_PHASE, align 4
  %50 = call i32 @resizer_set_phase(%struct.isp_res_device* %47, i32 %48, i32 %49)
  %51 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %52 = call i32 @resizer_set_luma(%struct.isp_res_device* %51, %struct.resizer_luma_yenh* %5)
  %53 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %54 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %55 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 2
  %58 = call i32 @ALIGN(i32 %57, i32 32)
  %59 = call i32 @resizer_set_output_offset(%struct.isp_res_device* %53, i32 %58)
  %60 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @resizer_set_output_size(%struct.isp_res_device* %60, i32 %63, i32 %66)
  %68 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %71 = call i32 @resizer_set_crop_params(%struct.isp_res_device* %68, %struct.v4l2_mbus_framefmt* %69, %struct.v4l2_mbus_framefmt* %70)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @resizer_set_source(%struct.isp_res_device*, i64) #2

declare dso_local i32 @resizer_set_input_offset(%struct.isp_res_device*, i32) #2

declare dso_local i32 @ALIGN(i32, i32) #2

declare dso_local i32 @resizer_set_intype(%struct.isp_res_device*, i32) #2

declare dso_local i32 @resizer_set_ycpos(%struct.isp_res_device*, i32) #2

declare dso_local i32 @resizer_set_phase(%struct.isp_res_device*, i32, i32) #2

declare dso_local i32 @resizer_set_luma(%struct.isp_res_device*, %struct.resizer_luma_yenh*) #2

declare dso_local i32 @resizer_set_output_offset(%struct.isp_res_device*, i32) #2

declare dso_local i32 @resizer_set_output_size(%struct.isp_res_device*, i32, i32) #2

declare dso_local i32 @resizer_set_crop_params(%struct.isp_res_device*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
