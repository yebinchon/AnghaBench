; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_std_init_compound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_std_init_compound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%union.v4l2_ctrl_ptr = type { i8* }
%struct.v4l2_ctrl_mpeg2_slice_params = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@V4L2_MPEG2_PICTURE_CODING_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_ctrl*, i32, i8*)* @std_init_compound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @std_init_compound(%struct.v4l2_ctrl* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %union.v4l2_ctrl_ptr, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_ctrl_mpeg2_slice_params*, align 8
  %8 = alloca i8*, align 8
  %9 = getelementptr inbounds %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr* %4, i32 0, i32 0
  store i8* %2, i8** %9, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  %10 = bitcast %union.v4l2_ctrl_ptr* %4 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %11, i64 %17
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memset(i8* %19, i32 0, i32 %22)
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %40 [
    i32 128, label %27
  ]

27:                                               ; preds = %3
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to %struct.v4l2_ctrl_mpeg2_slice_params*
  store %struct.v4l2_ctrl_mpeg2_slice_params* %29, %struct.v4l2_ctrl_mpeg2_slice_params** %7, align 8
  %30 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @V4L2_MPEG2_PICTURE_CODING_TYPE_I, align 4
  %37 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %3, %27
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
