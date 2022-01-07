; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_set_pal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_set_pal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.venc_state = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i32)* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"venc_set_pal\0A\00", align 1
@VPSS_VENC_CLOCK_SEL = common dso_local global i32 0, align 4
@VPBE_ENC_STD = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VPBE_VERSION_3 = common dso_local global i64 0, align 8
@VENC_CLKCTL = common dso_local global i32 0, align 4
@VENC_VIDCTL = common dso_local global i32 0, align 4
@VDAC_CONFIG_SD_V3 = common dso_local global i32 0, align 4
@VPBE_VERSION_2 = common dso_local global i64 0, align 8
@VDAC_CONFIG_SD_V2 = common dso_local global i32 0, align 4
@VENC_YCCCTL = common dso_local global i32 0, align 4
@VENC_SYNCCTL = common dso_local global i32 0, align 4
@VENC_SYNCCTL_OVD_SHIFT = common dso_local global i32 0, align 4
@VENC_SYNCCTL_OVD = common dso_local global i32 0, align 4
@VENC_VMOD = common dso_local global i32 0, align 4
@VENC_VMOD_VIE_SHIFT = common dso_local global i32 0, align 4
@VENC_VMOD_VIE = common dso_local global i32 0, align 4
@VENC_VMOD_VMD = common dso_local global i32 0, align 4
@VENC_VMOD_TVTYP_SHIFT = common dso_local global i32 0, align 4
@VENC_VMOD_TVTYP = common dso_local global i32 0, align 4
@VENC_DACTST = common dso_local global i32 0, align 4
@VENC_VMOD_VENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @venc_set_pal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_set_pal(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.venc_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %6 = call %struct.venc_state* @to_state(%struct.v4l2_subdev* %5)
  store %struct.venc_state* %6, %struct.venc_state** %4, align 8
  %7 = load i32, i32* @debug, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call i32 @v4l2_dbg(i32 %7, i32 2, %struct.v4l2_subdev* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @VPSS_VENC_CLOCK_SEL, align 4
  %11 = call i32 @vpss_enable_clock(i32 %10, i32 1)
  %12 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %13 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (i32, i32)*, i64 (i32, i32)** %15, align 8
  %17 = load i32, i32* @VPBE_ENC_STD, align 4
  %18 = load i32, i32* @V4L2_STD_625_50, align 4
  %19 = call i64 %16(i32 %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %108

24:                                               ; preds = %1
  %25 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %26 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @VPBE_ENC_STD, align 4
  %29 = load i32, i32* @V4L2_STD_625_50, align 4
  %30 = call i32 @venc_enable_vpss_clock(i64 %27, i32 %28, i32 %29)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %32 = call i32 @venc_enabledigitaloutput(%struct.v4l2_subdev* %31, i32 0)
  %33 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %34 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VPBE_VERSION_3, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %24
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %40 = load i32, i32* @VENC_CLKCTL, align 4
  %41 = call i32 @venc_write(%struct.v4l2_subdev* %39, i32 %40, i32 1)
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %43 = load i32, i32* @VENC_VIDCTL, align 4
  %44 = call i32 @venc_write(%struct.v4l2_subdev* %42, i32 %43, i32 0)
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %46 = load i32, i32* @VDAC_CONFIG_SD_V3, align 4
  %47 = call i32 @vdaccfg_write(%struct.v4l2_subdev* %45, i32 %46)
  br label %72

48:                                               ; preds = %24
  %49 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %50 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VPBE_VERSION_2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %56 = load i32, i32* @VENC_CLKCTL, align 4
  %57 = call i32 @venc_write(%struct.v4l2_subdev* %55, i32 %56, i32 1)
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %59 = load i32, i32* @VENC_VIDCTL, align 4
  %60 = call i32 @venc_write(%struct.v4l2_subdev* %58, i32 %59, i32 0)
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %62 = load i32, i32* @VDAC_CONFIG_SD_V2, align 4
  %63 = call i32 @vdaccfg_write(%struct.v4l2_subdev* %61, i32 %62)
  br label %71

64:                                               ; preds = %48
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %66 = load i32, i32* @VENC_VIDCTL, align 4
  %67 = call i32 @venc_modify(%struct.v4l2_subdev* %65, i32 %66, i32 0, i32 2)
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %69 = load i32, i32* @VENC_YCCCTL, align 4
  %70 = call i32 @venc_write(%struct.v4l2_subdev* %68, i32 %69, i32 1)
  br label %71

71:                                               ; preds = %64, %54
  br label %72

72:                                               ; preds = %71, %38
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %74 = load i32, i32* @VENC_SYNCCTL, align 4
  %75 = load i32, i32* @VENC_SYNCCTL_OVD_SHIFT, align 4
  %76 = shl i32 1, %75
  %77 = load i32, i32* @VENC_SYNCCTL_OVD, align 4
  %78 = call i32 @venc_modify(%struct.v4l2_subdev* %73, i32 %74, i32 %76, i32 %77)
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
  %90 = load i32, i32* @VENC_VMOD_VMD, align 4
  %91 = shl i32 0, %90
  %92 = load i32, i32* @VENC_VMOD_VMD, align 4
  %93 = call i32 @venc_modify(%struct.v4l2_subdev* %88, i32 %89, i32 %91, i32 %92)
  %94 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %95 = load i32, i32* @VENC_VMOD, align 4
  %96 = load i32, i32* @VENC_VMOD_TVTYP_SHIFT, align 4
  %97 = shl i32 1, %96
  %98 = load i32, i32* @VENC_VMOD_TVTYP, align 4
  %99 = call i32 @venc_modify(%struct.v4l2_subdev* %94, i32 %95, i32 %97, i32 %98)
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %101 = load i32, i32* @VENC_DACTST, align 4
  %102 = call i32 @venc_write(%struct.v4l2_subdev* %100, i32 %101, i32 0)
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %104 = load i32, i32* @VENC_VMOD, align 4
  %105 = load i32, i32* @VENC_VMOD_VENC, align 4
  %106 = load i32, i32* @VENC_VMOD_VENC, align 4
  %107 = call i32 @venc_modify(%struct.v4l2_subdev* %103, i32 %104, i32 %105, i32 %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %72, %21
  %109 = load i32, i32* %2, align 4
  ret i32 %109
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
