; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_fmt_pre.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_fmt_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format = type { i64, i64 }

@QCIF_WIDTH = common dso_local global i64 0, align 8
@QCIF_HEIGHT = common dso_local global i64 0, align 8
@VGA_WIDTH = common dso_local global i64 0, align 8
@VGA_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_pix_format*, %struct.v4l2_pix_format*)* @viacam_fmt_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viacam_fmt_pre(%struct.v4l2_pix_format* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.v4l2_pix_format*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.v4l2_pix_format* %0, %struct.v4l2_pix_format** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  %5 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %6 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %7 = bitcast %struct.v4l2_pix_format* %5 to i8*
  %8 = bitcast %struct.v4l2_pix_format* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %10 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QCIF_WIDTH, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QCIF_HEIGHT, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14, %2
  %21 = load i64, i64* @QCIF_WIDTH, align 8
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* @QCIF_HEIGHT, align 8
  %25 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %26 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VGA_WIDTH, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VGA_HEIGHT, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33, %27
  %40 = load i64, i64* @VGA_WIDTH, align 8
  %41 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* @VGA_HEIGHT, align 8
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %33
  %47 = load i64, i64* @VGA_WIDTH, align 8
  %48 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %49 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* @VGA_HEIGHT, align 8
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
