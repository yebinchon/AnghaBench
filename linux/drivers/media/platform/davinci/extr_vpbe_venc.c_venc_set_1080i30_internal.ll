; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_set_1080i30_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_set_1080i30_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.venc_state = type { i32, %struct.venc_platform_data* }
%struct.venc_platform_data = type { i64 (i32, i32)* }

@VPBE_ENC_DV_TIMINGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VENC_OSDCLK0 = common dso_local global i32 0, align 4
@VENC_OSDCLK1 = common dso_local global i32 0, align 4
@VENC_VMOD = common dso_local global i32 0, align 4
@VENC_VMOD_VIE_SHIFT = common dso_local global i32 0, align 4
@VENC_VMOD_VIE = common dso_local global i32 0, align 4
@VENC_VMOD_HDMD = common dso_local global i32 0, align 4
@HDTV_1080I = common dso_local global i32 0, align 4
@VENC_VMOD_TVTYP_SHIFT = common dso_local global i32 0, align 4
@VENC_VMOD_TVTYP = common dso_local global i32 0, align 4
@VENC_VMOD_VENC = common dso_local global i32 0, align 4
@VENC_XHINTVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @venc_set_1080i30_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_set_1080i30_internal(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.venc_state*, align 8
  %5 = alloca %struct.venc_platform_data*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.venc_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.venc_state* %7, %struct.venc_state** %4, align 8
  %8 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %9 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %8, i32 0, i32 1
  %10 = load %struct.venc_platform_data*, %struct.venc_platform_data** %9, align 8
  store %struct.venc_platform_data* %10, %struct.venc_platform_data** %5, align 8
  %11 = load %struct.venc_platform_data*, %struct.venc_platform_data** %5, align 8
  %12 = getelementptr inbounds %struct.venc_platform_data, %struct.venc_platform_data* %11, i32 0, i32 0
  %13 = load i64 (i32, i32)*, i64 (i32, i32)** %12, align 8
  %14 = load i32, i32* @VPBE_ENC_DV_TIMINGS, align 4
  %15 = call i64 %13(i32 %14, i32 74250000)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %22 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VPBE_ENC_DV_TIMINGS, align 4
  %25 = call i32 @venc_enable_vpss_clock(i32 %23, i32 %24, i32 74250000)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = call i32 @venc_enabledigitaloutput(%struct.v4l2_subdev* %26, i32 0)
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %29 = load i32, i32* @VENC_OSDCLK0, align 4
  %30 = call i32 @venc_write(%struct.v4l2_subdev* %28, i32 %29, i32 0)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %32 = load i32, i32* @VENC_OSDCLK1, align 4
  %33 = call i32 @venc_write(%struct.v4l2_subdev* %31, i32 %32, i32 1)
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %35 = load i32, i32* @VENC_VMOD, align 4
  %36 = call i32 @venc_write(%struct.v4l2_subdev* %34, i32 %35, i32 0)
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %38 = load i32, i32* @VENC_VMOD, align 4
  %39 = load i32, i32* @VENC_VMOD_VIE_SHIFT, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* @VENC_VMOD_VIE, align 4
  %42 = call i32 @venc_modify(%struct.v4l2_subdev* %37, i32 %38, i32 %40, i32 %41)
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %44 = load i32, i32* @VENC_VMOD, align 4
  %45 = load i32, i32* @VENC_VMOD_HDMD, align 4
  %46 = load i32, i32* @VENC_VMOD_HDMD, align 4
  %47 = call i32 @venc_modify(%struct.v4l2_subdev* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %49 = load i32, i32* @VENC_VMOD, align 4
  %50 = load i32, i32* @HDTV_1080I, align 4
  %51 = load i32, i32* @VENC_VMOD_TVTYP_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* @VENC_VMOD_TVTYP, align 4
  %54 = call i32 @venc_modify(%struct.v4l2_subdev* %48, i32 %49, i32 %52, i32 %53)
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %56 = load i32, i32* @VENC_VMOD, align 4
  %57 = load i32, i32* @VENC_VMOD_VENC, align 4
  %58 = load i32, i32* @VENC_VMOD_VENC, align 4
  %59 = call i32 @venc_modify(%struct.v4l2_subdev* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %61 = load i32, i32* @VENC_XHINTVL, align 4
  %62 = call i32 @venc_write(%struct.v4l2_subdev* %60, i32 %61, i32 0)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %20, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.venc_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @venc_enable_vpss_clock(i32, i32, i32) #1

declare dso_local i32 @venc_enabledigitaloutput(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @venc_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @venc_modify(%struct.v4l2_subdev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
