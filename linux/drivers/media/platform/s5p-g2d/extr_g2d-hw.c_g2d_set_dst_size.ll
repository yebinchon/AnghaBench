; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d-hw.c_g2d_set_dst_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d-hw.c_g2d_set_dst_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_dev = type { i32 }
%struct.g2d_frame = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DST_SELECT_REG = common dso_local global i32 0, align 4
@DST_STRIDE_REG = common dso_local global i32 0, align 4
@DST_LEFT_TOP_REG = common dso_local global i32 0, align 4
@DST_RIGHT_BOTTOM_REG = common dso_local global i32 0, align 4
@DST_COLOR_MODE_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g2d_set_dst_size(%struct.g2d_dev* %0, %struct.g2d_frame* %1) #0 {
  %3 = alloca %struct.g2d_dev*, align 8
  %4 = alloca %struct.g2d_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.g2d_dev* %0, %struct.g2d_dev** %3, align 8
  store %struct.g2d_frame* %1, %struct.g2d_frame** %4, align 8
  %6 = load i32, i32* @DST_SELECT_REG, align 4
  %7 = call i32 @w(i32 0, i32 %6)
  %8 = load %struct.g2d_frame*, %struct.g2d_frame** %4, align 8
  %9 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 65535
  %12 = load i32, i32* @DST_STRIDE_REG, align 4
  %13 = call i32 @w(i32 %11, i32 %12)
  %14 = load %struct.g2d_frame*, %struct.g2d_frame** %4, align 8
  %15 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 4095
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 16
  store i32 %19, i32* %5, align 4
  %20 = load %struct.g2d_frame*, %struct.g2d_frame** %4, align 8
  %21 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 4095
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DST_LEFT_TOP_REG, align 4
  %28 = call i32 @w(i32 %26, i32 %27)
  %29 = load %struct.g2d_frame*, %struct.g2d_frame** %4, align 8
  %30 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 4095
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 16
  store i32 %34, i32* %5, align 4
  %35 = load %struct.g2d_frame*, %struct.g2d_frame** %4, align 8
  %36 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 4095
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @DST_RIGHT_BOTTOM_REG, align 4
  %43 = call i32 @w(i32 %41, i32 %42)
  %44 = load %struct.g2d_frame*, %struct.g2d_frame** %4, align 8
  %45 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DST_COLOR_MODE_REG, align 4
  %50 = call i32 @w(i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @w(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
