; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_framebuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_framebuffer = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [129 x i8] c"capability=0x%x, flags=0x%x, base=0x%p, width=%u, height=%u, pixelformat=%c%c%c%c, bytesperline=%u, sizeimage=%u, colorspace=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_framebuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_framebuffer(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_framebuffer*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_framebuffer*
  store %struct.v4l2_framebuffer* %7, %struct.v4l2_framebuffer** %5, align 8
  %8 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 24
  %47 = and i32 %46, 255
  %48 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pr_cont(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %20, i32 %24, i32 %29, i32 %35, i32 %41, i32 %47, i32 %51, i32 %55, i32 %59)
  ret void
}

declare dso_local i32 @pr_cont(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
