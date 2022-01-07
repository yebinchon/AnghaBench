; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_set_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_camera = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VGA_WIDTH = common dso_local global i32 0, align 4
@VCR_AVS_HEN = common dso_local global i32 0, align 4
@VGA_HEIGHT = common dso_local global i32 0, align 4
@VCR_AVS_VEN = common dso_local global i32 0, align 4
@VCR_AVSCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_camera*)* @viacam_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viacam_set_scale(%struct.via_camera* %0) #0 {
  %2 = alloca %struct.via_camera*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.via_camera* %0, %struct.via_camera** %2, align 8
  %5 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %6 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VGA_WIDTH, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %14 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 2048
  %18 = load i32, i32* @VGA_WIDTH, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @VCR_AVS_HEN, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %12, %11
  %24 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %25 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VGA_HEIGHT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %32 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 1024, %34
  %36 = load i32, i32* @VGA_HEIGHT, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @VCR_AVS_VEN, align 4
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 %39, 16
  %41 = or i32 %38, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %30, %23
  %45 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %46 = load i32, i32* @VCR_AVSCALE, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @viacam_write_reg(%struct.via_camera* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @viacam_write_reg(%struct.via_camera*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
