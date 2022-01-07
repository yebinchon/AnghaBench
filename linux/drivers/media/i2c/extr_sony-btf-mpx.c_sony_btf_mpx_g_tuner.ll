; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sony-btf-mpx.c_sony_btf_mpx_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sony-btf-mpx.c_sony_btf_mpx_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32, i32, i32 }
%struct.sony_btf_mpx = type { i32 }

@V4L2_TUNER_CAP_NORM = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @sony_btf_mpx_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_btf_mpx_g_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_tuner*, align 8
  %5 = alloca %struct.sony_btf_mpx*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %4, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.sony_btf_mpx* @to_state(%struct.v4l2_subdev* %6)
  store %struct.sony_btf_mpx* %7, %struct.sony_btf_mpx** %5, align 8
  %8 = load i32, i32* @V4L2_TUNER_CAP_NORM, align 4
  %9 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %18 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.sony_btf_mpx*, %struct.sony_btf_mpx** %5, align 8
  %27 = getelementptr inbounds %struct.sony_btf_mpx, %struct.sony_btf_mpx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  ret i32 0
}

declare dso_local %struct.sony_btf_mpx* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
