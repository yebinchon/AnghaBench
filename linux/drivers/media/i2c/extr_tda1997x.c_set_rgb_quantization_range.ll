; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_set_rgb_quantization_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_set_rgb_quantization_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.v4l2_hdmi_colorimetry }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_hdmi_colorimetry = type { i64, i64, i32 }

@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i64 0, align 8
@V4L2_QUANTIZATION_FULL_RANGE = common dso_local global i64 0, align 8
@V4L2_QUANTIZATION_LIM_RANGE = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"colorspace=%d/%d colorimetry=%d range=%s content=%d\0A\00", align 1
@v4l2_quantization_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda1997x_state*)* @set_rgb_quantization_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rgb_quantization_range(%struct.tda1997x_state* %0) #0 {
  %2 = alloca %struct.tda1997x_state*, align 8
  %3 = alloca %struct.v4l2_hdmi_colorimetry*, align 8
  %4 = alloca %struct.v4l2_hdmi_colorimetry, align 8
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %2, align 8
  %5 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %6 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %5, i32 0, i32 4
  store %struct.v4l2_hdmi_colorimetry* %6, %struct.v4l2_hdmi_colorimetry** %3, align 8
  %7 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %8 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %7, i32 0, i32 4
  %9 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %10 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %9, i32 0, i32 1
  %11 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %12 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  call void @v4l2_hdmi_rx_colorimetry(%struct.v4l2_hdmi_colorimetry* sret %4, %struct.TYPE_6__* %10, i32* null, i32 %15)
  %16 = bitcast %struct.v4l2_hdmi_colorimetry* %8 to i8*
  %17 = bitcast %struct.v4l2_hdmi_colorimetry* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  %18 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_YCBCR_ENC_DEFAULT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %25 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %35 [
    i32 128, label %27
    i32 129, label %31
  ]

27:                                               ; preds = %23
  %28 = load i64, i64* @V4L2_QUANTIZATION_FULL_RANGE, align 8
  %29 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %3, align 8
  %30 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %35

31:                                               ; preds = %23
  %32 = load i64, i64* @V4L2_QUANTIZATION_LIM_RANGE, align 8
  %33 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %3, align 8
  %34 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %23, %31, %27
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* @debug, align 4
  %38 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %39 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %42 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %3, align 8
  %46 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %49 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @v4l2_quantization_names, align 8
  %53 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %3, align 8
  %54 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %59 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @v4l_dbg(i32 1, i32 %37, i32 %40, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %51, i32 %57, i32 %61)
  ret void
}

declare dso_local void @v4l2_hdmi_rx_colorimetry(%struct.v4l2_hdmi_colorimetry* sret, %struct.TYPE_6__*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l_dbg(i32, i32, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
