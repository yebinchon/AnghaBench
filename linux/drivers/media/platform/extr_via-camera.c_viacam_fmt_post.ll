; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_fmt_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_fmt_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.via_format = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_pix_format*, %struct.v4l2_pix_format*)* @viacam_fmt_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viacam_fmt_post(%struct.v4l2_pix_format* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.v4l2_pix_format*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  %5 = alloca %struct.via_format*, align 8
  store %struct.v4l2_pix_format* %0, %struct.v4l2_pix_format** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  %6 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %7 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.via_format* @via_find_format(i32 %8)
  store %struct.via_format* %9, %struct.via_format** %5, align 8
  %10 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.via_format*, %struct.via_format** %5, align 8
  %14 = getelementptr inbounds %struct.via_format, %struct.via_format* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 2, %40
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  ret void
}

declare dso_local %struct.via_format* @via_find_format(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
