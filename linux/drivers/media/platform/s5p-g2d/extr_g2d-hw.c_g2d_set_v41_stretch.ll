; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d-hw.c_g2d_set_v41_stretch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d-hw.c_g2d_set_v41_stretch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_dev = type { i32 }
%struct.g2d_frame = type { i32, i32 }

@DEFAULT_SCALE_MODE = common dso_local global i32 0, align 4
@SRC_SCALE_CTRL_REG = common dso_local global i32 0, align 4
@SRC_XSCALE_REG = common dso_local global i32 0, align 4
@SRC_YSCALE_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g2d_set_v41_stretch(%struct.g2d_dev* %0, %struct.g2d_frame* %1, %struct.g2d_frame* %2) #0 {
  %4 = alloca %struct.g2d_dev*, align 8
  %5 = alloca %struct.g2d_frame*, align 8
  %6 = alloca %struct.g2d_frame*, align 8
  store %struct.g2d_dev* %0, %struct.g2d_dev** %4, align 8
  store %struct.g2d_frame* %1, %struct.g2d_frame** %5, align 8
  store %struct.g2d_frame* %2, %struct.g2d_frame** %6, align 8
  %7 = load i32, i32* @DEFAULT_SCALE_MODE, align 4
  %8 = load i32, i32* @SRC_SCALE_CTRL_REG, align 4
  %9 = call i32 @w(i32 %7, i32 %8)
  %10 = load %struct.g2d_frame*, %struct.g2d_frame** %5, align 8
  %11 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 16
  %14 = load %struct.g2d_frame*, %struct.g2d_frame** %6, align 8
  %15 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  %18 = load i32, i32* @SRC_XSCALE_REG, align 4
  %19 = call i32 @w(i32 %17, i32 %18)
  %20 = load %struct.g2d_frame*, %struct.g2d_frame** %5, align 8
  %21 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 16
  %24 = load %struct.g2d_frame*, %struct.g2d_frame** %6, align 8
  %25 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  %28 = load i32, i32* @SRC_YSCALE_REG, align 4
  %29 = call i32 @w(i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @w(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
