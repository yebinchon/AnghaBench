; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_enabledigitaloutput.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_enabledigitaloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.venc_state = type { i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"venc_enabledigitaloutput\0A\00", align 1
@VENC_VMOD = common dso_local global i32 0, align 4
@VENC_CVBS = common dso_local global i32 0, align 4
@VENC_LCDOUT = common dso_local global i32 0, align 4
@VENC_HSPLS = common dso_local global i32 0, align 4
@VENC_HSTART = common dso_local global i32 0, align 4
@VENC_HVALID = common dso_local global i32 0, align 4
@VENC_HINT = common dso_local global i32 0, align 4
@VENC_VSPLS = common dso_local global i32 0, align 4
@VENC_VSTART = common dso_local global i32 0, align 4
@VENC_VVALID = common dso_local global i32 0, align 4
@VENC_VINT = common dso_local global i32 0, align 4
@VENC_YCCCTL = common dso_local global i32 0, align 4
@VENC_DACSEL = common dso_local global i32 0, align 4
@VENC_VIDCTL = common dso_local global i32 0, align 4
@VENC_SYNCCTL = common dso_local global i32 0, align 4
@VENC_DCLKCTL = common dso_local global i32 0, align 4
@VENC_DRGBX1 = common dso_local global i32 0, align 4
@VPBE_VERSION_3 = common dso_local global i64 0, align 8
@VENC_CMPNT = common dso_local global i32 0, align 4
@VENC_HSDLY = common dso_local global i32 0, align 4
@VENC_VSDLY = common dso_local global i32 0, align 4
@VENC_VSTARTA = common dso_local global i32 0, align 4
@VENC_OSDCLK0 = common dso_local global i32 0, align 4
@VENC_OSDCLK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i32)* @venc_enabledigitaloutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venc_enabledigitaloutput(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.venc_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.venc_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.venc_state* %7, %struct.venc_state** %5, align 8
  %8 = load i32, i32* @debug, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call i32 @v4l2_dbg(i32 %8, i32 2, %struct.v4l2_subdev* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = load i32, i32* @VENC_VMOD, align 4
  %16 = call i32 @venc_write(%struct.v4l2_subdev* %14, i32 %15, i32 0)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = load i32, i32* @VENC_CVBS, align 4
  %19 = call i32 @venc_write(%struct.v4l2_subdev* %17, i32 %18, i32 0)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = load i32, i32* @VENC_LCDOUT, align 4
  %22 = call i32 @venc_write(%struct.v4l2_subdev* %20, i32 %21, i32 0)
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %24 = load i32, i32* @VENC_HSPLS, align 4
  %25 = call i32 @venc_write(%struct.v4l2_subdev* %23, i32 %24, i32 0)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = load i32, i32* @VENC_HSTART, align 4
  %28 = call i32 @venc_write(%struct.v4l2_subdev* %26, i32 %27, i32 0)
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %30 = load i32, i32* @VENC_HVALID, align 4
  %31 = call i32 @venc_write(%struct.v4l2_subdev* %29, i32 %30, i32 0)
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %33 = load i32, i32* @VENC_HINT, align 4
  %34 = call i32 @venc_write(%struct.v4l2_subdev* %32, i32 %33, i32 0)
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %36 = load i32, i32* @VENC_VSPLS, align 4
  %37 = call i32 @venc_write(%struct.v4l2_subdev* %35, i32 %36, i32 0)
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %39 = load i32, i32* @VENC_VSTART, align 4
  %40 = call i32 @venc_write(%struct.v4l2_subdev* %38, i32 %39, i32 0)
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %42 = load i32, i32* @VENC_VVALID, align 4
  %43 = call i32 @venc_write(%struct.v4l2_subdev* %41, i32 %42, i32 0)
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %45 = load i32, i32* @VENC_VINT, align 4
  %46 = call i32 @venc_write(%struct.v4l2_subdev* %44, i32 %45, i32 0)
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %48 = load i32, i32* @VENC_YCCCTL, align 4
  %49 = call i32 @venc_write(%struct.v4l2_subdev* %47, i32 %48, i32 0)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %51 = load i32, i32* @VENC_DACSEL, align 4
  %52 = call i32 @venc_write(%struct.v4l2_subdev* %50, i32 %51, i32 0)
  br label %124

53:                                               ; preds = %2
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %55 = load i32, i32* @VENC_VMOD, align 4
  %56 = call i32 @venc_write(%struct.v4l2_subdev* %54, i32 %55, i32 0)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %58 = load i32, i32* @VENC_VIDCTL, align 4
  %59 = call i32 @venc_write(%struct.v4l2_subdev* %57, i32 %58, i32 321)
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %61 = load i32, i32* @VENC_SYNCCTL, align 4
  %62 = call i32 @venc_write(%struct.v4l2_subdev* %60, i32 %61, i32 0)
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %64 = load i32, i32* @VENC_DCLKCTL, align 4
  %65 = call i32 @venc_write(%struct.v4l2_subdev* %63, i32 %64, i32 0)
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %67 = load i32, i32* @VENC_DRGBX1, align 4
  %68 = call i32 @venc_write(%struct.v4l2_subdev* %66, i32 %67, i32 1404)
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %70 = load i32, i32* @VENC_LCDOUT, align 4
  %71 = call i32 @venc_write(%struct.v4l2_subdev* %69, i32 %70, i32 0)
  %72 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %73 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VPBE_VERSION_3, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %53
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %79 = load i32, i32* @VENC_CMPNT, align 4
  %80 = call i32 @venc_write(%struct.v4l2_subdev* %78, i32 %79, i32 256)
  br label %81

81:                                               ; preds = %77, %53
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %83 = load i32, i32* @VENC_HSPLS, align 4
  %84 = call i32 @venc_write(%struct.v4l2_subdev* %82, i32 %83, i32 0)
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %86 = load i32, i32* @VENC_HINT, align 4
  %87 = call i32 @venc_write(%struct.v4l2_subdev* %85, i32 %86, i32 0)
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %89 = load i32, i32* @VENC_HSTART, align 4
  %90 = call i32 @venc_write(%struct.v4l2_subdev* %88, i32 %89, i32 0)
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %92 = load i32, i32* @VENC_HVALID, align 4
  %93 = call i32 @venc_write(%struct.v4l2_subdev* %91, i32 %92, i32 0)
  %94 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %95 = load i32, i32* @VENC_VSPLS, align 4
  %96 = call i32 @venc_write(%struct.v4l2_subdev* %94, i32 %95, i32 0)
  %97 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %98 = load i32, i32* @VENC_VINT, align 4
  %99 = call i32 @venc_write(%struct.v4l2_subdev* %97, i32 %98, i32 0)
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %101 = load i32, i32* @VENC_VSTART, align 4
  %102 = call i32 @venc_write(%struct.v4l2_subdev* %100, i32 %101, i32 0)
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %104 = load i32, i32* @VENC_VVALID, align 4
  %105 = call i32 @venc_write(%struct.v4l2_subdev* %103, i32 %104, i32 0)
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %107 = load i32, i32* @VENC_HSDLY, align 4
  %108 = call i32 @venc_write(%struct.v4l2_subdev* %106, i32 %107, i32 0)
  %109 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %110 = load i32, i32* @VENC_VSDLY, align 4
  %111 = call i32 @venc_write(%struct.v4l2_subdev* %109, i32 %110, i32 0)
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %113 = load i32, i32* @VENC_YCCCTL, align 4
  %114 = call i32 @venc_write(%struct.v4l2_subdev* %112, i32 %113, i32 0)
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %116 = load i32, i32* @VENC_VSTARTA, align 4
  %117 = call i32 @venc_write(%struct.v4l2_subdev* %115, i32 %116, i32 0)
  %118 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %119 = load i32, i32* @VENC_OSDCLK0, align 4
  %120 = call i32 @venc_write(%struct.v4l2_subdev* %118, i32 %119, i32 1)
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %122 = load i32, i32* @VENC_OSDCLK1, align 4
  %123 = call i32 @venc_write(%struct.v4l2_subdev* %121, i32 %122, i32 2)
  br label %124

124:                                              ; preds = %81, %13
  ret void
}

declare dso_local %struct.venc_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @venc_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
