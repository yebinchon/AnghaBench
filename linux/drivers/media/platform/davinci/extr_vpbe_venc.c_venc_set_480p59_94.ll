; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_set_480p59_94.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_set_480p59_94.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.venc_state = type { i64, %struct.venc_platform_data* }
%struct.venc_platform_data = type { i64 (i32, i32)* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"venc_set_480p59_94\0A\00", align 1
@VPBE_VERSION_1 = common dso_local global i64 0, align 8
@VPBE_VERSION_2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VPBE_ENC_DV_TIMINGS = common dso_local global i32 0, align 4
@VDAC_CONFIG_HD_V2 = common dso_local global i32 0, align 4
@VENC_OSDCLK0 = common dso_local global i32 0, align 4
@VENC_OSDCLK1 = common dso_local global i32 0, align 4
@VENC_VDPRO = common dso_local global i32 0, align 4
@VENC_VDPRO_DAFRQ = common dso_local global i32 0, align 4
@VENC_VDPRO_DAUPS = common dso_local global i32 0, align 4
@VENC_VMOD = common dso_local global i32 0, align 4
@VENC_VMOD_VIE_SHIFT = common dso_local global i32 0, align 4
@VENC_VMOD_VIE = common dso_local global i32 0, align 4
@VENC_VMOD_HDMD = common dso_local global i32 0, align 4
@HDTV_525P = common dso_local global i32 0, align 4
@VENC_VMOD_TVTYP_SHIFT = common dso_local global i32 0, align 4
@VENC_VMOD_TVTYP = common dso_local global i32 0, align 4
@VENC_VMOD_VDMD_YCBCR8 = common dso_local global i32 0, align 4
@VENC_VMOD_VDMD_SHIFT = common dso_local global i32 0, align 4
@VENC_VMOD_VDMD = common dso_local global i32 0, align 4
@VENC_VMOD_VENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @venc_set_480p59_94 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_set_480p59_94(%struct.v4l2_subdev* %0) #0 {
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
  %11 = load i32, i32* @debug, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = call i32 @v4l2_dbg(i32 %11, i32 2, %struct.v4l2_subdev* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %15 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VPBE_VERSION_1, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %21 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VPBE_VERSION_2, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %112

28:                                               ; preds = %19, %1
  %29 = load %struct.venc_platform_data*, %struct.venc_platform_data** %5, align 8
  %30 = getelementptr inbounds %struct.venc_platform_data, %struct.venc_platform_data* %29, i32 0, i32 0
  %31 = load i64 (i32, i32)*, i64 (i32, i32)** %30, align 8
  %32 = load i32, i32* @VPBE_ENC_DV_TIMINGS, align 4
  %33 = call i64 %31(i32 %32, i32 27000000)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %112

38:                                               ; preds = %28
  %39 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %40 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @VPBE_ENC_DV_TIMINGS, align 4
  %43 = call i32 @venc_enable_vpss_clock(i64 %41, i32 %42, i32 27000000)
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %45 = call i32 @venc_enabledigitaloutput(%struct.v4l2_subdev* %44, i32 0)
  %46 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %47 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VPBE_VERSION_2, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %53 = load i32, i32* @VDAC_CONFIG_HD_V2, align 4
  %54 = call i32 @vdaccfg_write(%struct.v4l2_subdev* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %38
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %57 = load i32, i32* @VENC_OSDCLK0, align 4
  %58 = call i32 @venc_write(%struct.v4l2_subdev* %56, i32 %57, i32 0)
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %60 = load i32, i32* @VENC_OSDCLK1, align 4
  %61 = call i32 @venc_write(%struct.v4l2_subdev* %59, i32 %60, i32 1)
  %62 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %63 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VPBE_VERSION_1, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %55
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %69 = load i32, i32* @VENC_VDPRO, align 4
  %70 = load i32, i32* @VENC_VDPRO_DAFRQ, align 4
  %71 = load i32, i32* @VENC_VDPRO_DAFRQ, align 4
  %72 = call i32 @venc_modify(%struct.v4l2_subdev* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %74 = load i32, i32* @VENC_VDPRO, align 4
  %75 = load i32, i32* @VENC_VDPRO_DAUPS, align 4
  %76 = load i32, i32* @VENC_VDPRO_DAUPS, align 4
  %77 = call i32 @venc_modify(%struct.v4l2_subdev* %73, i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %67, %55
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %80 = load i32, i32* @VENC_VMOD, align 4
  %81 = call i32 @venc_write(%struct.v4l2_subdev* %79, i32 %80, i32 0)
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %83 = load i32, i32* @VENC_VMOD, align 4
  %84 = load i32, i32* @VENC_VMOD_VIE_SHIFT, align 4
  %85 = shl i32 1, %84
  %86 = load i32, i32* @VENC_VMOD_VIE, align 4
  %87 = call i32 @venc_modify(%struct.v4l2_subdev* %82, i32 %83, i32 %85, i32 %86)
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %89 = load i32, i32* @VENC_VMOD, align 4
  %90 = load i32, i32* @VENC_VMOD_HDMD, align 4
  %91 = load i32, i32* @VENC_VMOD_HDMD, align 4
  %92 = call i32 @venc_modify(%struct.v4l2_subdev* %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %94 = load i32, i32* @VENC_VMOD, align 4
  %95 = load i32, i32* @HDTV_525P, align 4
  %96 = load i32, i32* @VENC_VMOD_TVTYP_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* @VENC_VMOD_TVTYP, align 4
  %99 = call i32 @venc_modify(%struct.v4l2_subdev* %93, i32 %94, i32 %97, i32 %98)
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %101 = load i32, i32* @VENC_VMOD, align 4
  %102 = load i32, i32* @VENC_VMOD_VDMD_YCBCR8, align 4
  %103 = load i32, i32* @VENC_VMOD_VDMD_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* @VENC_VMOD_VDMD, align 4
  %106 = call i32 @venc_modify(%struct.v4l2_subdev* %100, i32 %101, i32 %104, i32 %105)
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %108 = load i32, i32* @VENC_VMOD, align 4
  %109 = load i32, i32* @VENC_VMOD_VENC, align 4
  %110 = load i32, i32* @VENC_VMOD_VENC, align 4
  %111 = call i32 @venc_modify(%struct.v4l2_subdev* %107, i32 %108, i32 %109, i32 %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %78, %35, %25
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.venc_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @venc_enable_vpss_clock(i64, i32, i32) #1

declare dso_local i32 @venc_enabledigitaloutput(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @vdaccfg_write(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @venc_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @venc_modify(%struct.v4l2_subdev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
