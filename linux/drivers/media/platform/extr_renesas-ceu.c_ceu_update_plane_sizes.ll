; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_update_plane_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_update_plane_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_plane_pix_format = type { i32, i32 }

@CEU_MAX_BPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_plane_pix_format*, i32, i32)* @ceu_update_plane_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceu_update_plane_sizes(%struct.v4l2_plane_pix_format* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_plane_pix_format*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_plane_pix_format* %0, %struct.v4l2_plane_pix_format** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %4, align 8
  %8 = call i32 @memset(%struct.v4l2_plane_pix_format* %7, i32 0, i32 8)
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CEU_MAX_BPL, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %3
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @memset(%struct.v4l2_plane_pix_format*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
