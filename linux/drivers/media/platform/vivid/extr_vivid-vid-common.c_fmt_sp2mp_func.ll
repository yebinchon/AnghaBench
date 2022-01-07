; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_fmt_sp2mp_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_fmt_sp2mp_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format, %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_plane_pix_format* }
%struct.v4l2_plane_pix_format = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fmt_sp2mp_func(%struct.file* %0, i8* %1, %struct.v4l2_format* %2, i32 (%struct.file*, i8*, %struct.v4l2_format*)* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca i32 (%struct.file*, i8*, %struct.v4l2_format*)*, align 8
  %9 = alloca %struct.v4l2_format, align 8
  %10 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %11 = alloca %struct.v4l2_plane_pix_format*, align 8
  %12 = alloca %struct.v4l2_pix_format*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  store i32 (%struct.file*, i8*, %struct.v4l2_format*)* %3, i32 (%struct.file*, i8*, %struct.v4l2_format*)** %8, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %9, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.v4l2_pix_format_mplane* %15, %struct.v4l2_pix_format_mplane** %10, align 8
  %16 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %16, i32 0, i32 9
  %18 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %17, align 8
  %19 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %18, i64 0
  store %struct.v4l2_plane_pix_format* %19, %struct.v4l2_plane_pix_format** %11, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.v4l2_pix_format* %22, %struct.v4l2_pix_format** %12, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = call i32 @fmt_sp2mp(%struct.v4l2_format* %23, %struct.v4l2_format* %9)
  %25 = load i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)** %8, align 8
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 %25(%struct.file* %26, i8* %27, %struct.v4l2_format* %9)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 4
  %34 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 4
  %39 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %70 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %75 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %78 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %83 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %13, align 4
  ret i32 %84
}

declare dso_local i32 @fmt_sp2mp(%struct.v4l2_format*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
