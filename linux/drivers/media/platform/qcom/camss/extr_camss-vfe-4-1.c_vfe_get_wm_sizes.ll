; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_get_wm_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_get_wm_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format_mplane = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_pix_format_mplane*, i32, i32*, i32*, i32*)* @vfe_get_wm_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_get_wm_sizes(%struct.v4l2_pix_format_mplane* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.v4l2_pix_format_mplane* %0, %struct.v4l2_pix_format_mplane** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %53 [
    i32 131, label %14
    i32 129, label %14
    i32 130, label %37
    i32 128, label %37
  ]

14:                                               ; preds = %5, %5
  %15 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %14
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %32, %14
  br label %53

37:                                               ; preds = %5, %5
  %38 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %5, %37, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
