; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_v4l2_rot_to_dss_rot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_v4l2_rot_to_dss_rot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dss_rotation_90_degree = common dso_local global i32 0, align 4
@dss_rotation_180_degree = common dso_local global i32 0, align 4
@dss_rotation_270_degree = common dso_local global i32 0, align 4
@dss_rotation_0_degree = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @v4l2_rot_to_dss_rot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_rot_to_dss_rot(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %21 [
    i32 90, label %9
    i32 180, label %12
    i32 270, label %15
    i32 0, label %18
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @dss_rotation_90_degree, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  br label %24

12:                                               ; preds = %3
  %13 = load i32, i32* @dss_rotation_180_degree, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  br label %24

15:                                               ; preds = %3
  %16 = load i32, i32* @dss_rotation_270_degree, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @dss_rotation_0_degree, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %18, %15, %12, %9
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
