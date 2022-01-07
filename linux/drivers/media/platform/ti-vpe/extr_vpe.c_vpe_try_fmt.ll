; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32 }
%struct.vpe_ctx = type { i32 }
%struct.vpe_fmt = type { i32 }

@VPE_FMT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@VPE_FMT_TYPE_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vpe_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpe_try_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vpe_ctx*, align 8
  %9 = alloca %struct.vpe_fmt*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vpe_ctx* @file2ctx(%struct.file* %10)
  store %struct.vpe_ctx* %11, %struct.vpe_ctx** %8, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %13 = call %struct.vpe_fmt* @find_format(%struct.v4l2_format* %12)
  store %struct.vpe_fmt* %13, %struct.vpe_fmt** %9, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.vpe_ctx*, %struct.vpe_ctx** %8, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = load %struct.vpe_fmt*, %struct.vpe_fmt** %9, align 8
  %23 = load i32, i32* @VPE_FMT_TYPE_OUTPUT, align 4
  %24 = call i32 @__vpe_try_fmt(%struct.vpe_ctx* %20, %struct.v4l2_format* %21, %struct.vpe_fmt* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.vpe_ctx*, %struct.vpe_ctx** %8, align 8
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = load %struct.vpe_fmt*, %struct.vpe_fmt** %9, align 8
  %29 = load i32, i32* @VPE_FMT_TYPE_CAPTURE, align 4
  %30 = call i32 @__vpe_try_fmt(%struct.vpe_ctx* %26, %struct.v4l2_format* %27, %struct.vpe_fmt* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.vpe_ctx* @file2ctx(%struct.file*) #1

declare dso_local %struct.vpe_fmt* @find_format(%struct.v4l2_format*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @__vpe_try_fmt(%struct.vpe_ctx*, %struct.v4l2_format*, %struct.vpe_fmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
