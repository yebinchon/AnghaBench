; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_set_ntsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_set_ntsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.venc_state = type { i64, %struct.venc_platform_data* }
%struct.venc_platform_data = type { i64 (i32, i32)* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"venc_set_ntsc\0A\00", align 1
@VPSS_VENC_CLOCK_SEL = common dso_local global i32 0, align 4
@VPBE_ENC_STD = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VPBE_VERSION_3 = common dso_local global i64 0, align 8
@VENC_CLKCTL = common dso_local global i32 0, align 4
@VENC_VIDCTL = common dso_local global i32 0, align 4
@VDAC_CONFIG_SD_V3 = common dso_local global i32 0, align 4
@VPBE_VERSION_2 = common dso_local global i64 0, align 8
@VDAC_CONFIG_SD_V2 = common dso_local global i32 0, align 4
@VENC_YCCCTL = common dso_local global i32 0, align 4
@VENC_VDPRO = common dso_local global i32 0, align 4
@VENC_VDPRO_DAFRQ = common dso_local global i32 0, align 4
@VENC_VDPRO_DAUPS = common dso_local global i32 0, align 4
@VENC_VMOD = common dso_local global i32 0, align 4
@VENC_VMOD_VIE_SHIFT = common dso_local global i32 0, align 4
@VENC_VMOD_VIE = common dso_local global i32 0, align 4
@VENC_VMOD_VMD = common dso_local global i32 0, align 4
@VENC_VMOD_TVTYP_SHIFT = common dso_local global i32 0, align 4
@VENC_VMOD_TVTYP = common dso_local global i32 0, align 4
@VENC_DACTST = common dso_local global i32 0, align 4
@VENC_VMOD_VENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @venc_set_ntsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_set_ntsc(%struct.v4l2_subdev* %0) #0 {
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
  %13 = call i32 @v4l2_dbg(i32 %11, i32 2, %struct.v4l2_subdev* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @VPSS_VENC_CLOCK_SEL, align 4
  %15 = call i32 @vpss_enable_clock(i32 %14, i32 1)
  %16 = load %struct.venc_platform_data*, %struct.venc_platform_data** %5, align 8
  %17 = getelementptr inbounds %struct.venc_platform_data, %struct.venc_platform_data* %16, i32 0, i32 0
  %18 = load i64 (i32, i32)*, i64 (i32, i32)** %17, align 8
  %19 = load i32, i32* @VPBE_ENC_STD, align 4
  %20 = load i32, i32* @V4L2_STD_525_60, align 4
  %21 = call i64 %18(i32 %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %112

26:                                               ; preds = %1
  %27 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %28 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @VPBE_ENC_STD, align 4
  %31 = load i32, i32* @V4L2_STD_525_60, align 4
  %32 = call i32 @venc_enable_vpss_clock(i64 %29, i32 %30, i32 %31)
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %34 = call i32 @venc_enabledigitaloutput(%struct.v4l2_subdev* %33, i32 0)
  %35 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %36 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VPBE_VERSION_3, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %42 = load i32, i32* @VENC_CLKCTL, align 4
  %43 = call i32 @venc_write(%struct.v4l2_subdev* %41, i32 %42, i32 1)
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %45 = load i32, i32* @VENC_VIDCTL, align 4
  %46 = call i32 @venc_write(%struct.v4l2_subdev* %44, i32 %45, i32 0)
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %48 = load i32, i32* @VDAC_CONFIG_SD_V3, align 4
  %49 = call i32 @vdaccfg_write(%struct.v4l2_subdev* %47, i32 %48)
  br label %82

50:                                               ; preds = %26
  %51 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %52 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VPBE_VERSION_2, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %58 = load i32, i32* @VENC_CLKCTL, align 4
  %59 = call i32 @venc_write(%struct.v4l2_subdev* %57, i32 %58, i32 1)
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %61 = load i32, i32* @VENC_VIDCTL, align 4
  %62 = call i32 @venc_write(%struct.v4l2_subdev* %60, i32 %61, i32 0)
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %64 = load i32, i32* @VDAC_CONFIG_SD_V2, align 4
  %65 = call i32 @vdaccfg_write(%struct.v4l2_subdev* %63, i32 %64)
  br label %81

66:                                               ; preds = %50
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %68 = load i32, i32* @VENC_VIDCTL, align 4
  %69 = call i32 @venc_modify(%struct.v4l2_subdev* %67, i32 %68, i32 0, i32 2)
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %71 = load i32, i32* @VENC_YCCCTL, align 4
  %72 = call i32 @venc_write(%struct.v4l2_subdev* %70, i32 %71, i32 1)
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %74 = load i32, i32* @VENC_VDPRO, align 4
  %75 = load i32, i32* @VENC_VDPRO_DAFRQ, align 4
  %76 = call i32 @venc_modify(%struct.v4l2_subdev* %73, i32 %74, i32 0, i32 %75)
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %78 = load i32, i32* @VENC_VDPRO, align 4
  %79 = load i32, i32* @VENC_VDPRO_DAUPS, align 4
  %80 = call i32 @venc_modify(%struct.v4l2_subdev* %77, i32 %78, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %66, %56
  br label %82

82:                                               ; preds = %81, %40
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %84 = load i32, i32* @VENC_VMOD, align 4
  %85 = call i32 @venc_write(%struct.v4l2_subdev* %83, i32 %84, i32 0)
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %87 = load i32, i32* @VENC_VMOD, align 4
  %88 = load i32, i32* @VENC_VMOD_VIE_SHIFT, align 4
  %89 = shl i32 1, %88
  %90 = load i32, i32* @VENC_VMOD_VIE, align 4
  %91 = call i32 @venc_modify(%struct.v4l2_subdev* %86, i32 %87, i32 %89, i32 %90)
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %93 = load i32, i32* @VENC_VMOD, align 4
  %94 = load i32, i32* @VENC_VMOD_VMD, align 4
  %95 = shl i32 0, %94
  %96 = load i32, i32* @VENC_VMOD_VMD, align 4
  %97 = call i32 @venc_modify(%struct.v4l2_subdev* %92, i32 %93, i32 %95, i32 %96)
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %99 = load i32, i32* @VENC_VMOD, align 4
  %100 = load i32, i32* @VENC_VMOD_TVTYP_SHIFT, align 4
  %101 = shl i32 0, %100
  %102 = load i32, i32* @VENC_VMOD_TVTYP, align 4
  %103 = call i32 @venc_modify(%struct.v4l2_subdev* %98, i32 %99, i32 %101, i32 %102)
  %104 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %105 = load i32, i32* @VENC_DACTST, align 4
  %106 = call i32 @venc_write(%struct.v4l2_subdev* %104, i32 %105, i32 0)
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %108 = load i32, i32* @VENC_VMOD, align 4
  %109 = load i32, i32* @VENC_VMOD_VENC, align 4
  %110 = load i32, i32* @VENC_VMOD_VENC, align 4
  %111 = call i32 @venc_modify(%struct.v4l2_subdev* %107, i32 %108, i32 %109, i32 %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %82, %23
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.venc_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @vpss_enable_clock(i32, i32) #1

declare dso_local i32 @venc_enable_vpss_clock(i64, i32, i32) #1

declare dso_local i32 @venc_enabledigitaloutput(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @venc_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @vdaccfg_write(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @venc_modify(%struct.v4l2_subdev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
