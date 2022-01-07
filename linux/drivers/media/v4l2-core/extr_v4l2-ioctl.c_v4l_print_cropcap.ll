; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_cropcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_cropcap = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [87 x i8] c"type=%s, bounds wxh=%dx%d, x,y=%d,%d, defrect wxh=%dx%d, x,y=%d,%d, pixelaspect %d/%d\0A\00", align 1
@v4l2_type_names = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_cropcap(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_cropcap*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_cropcap*
  store %struct.v4l2_cropcap* %7, %struct.v4l2_cropcap** %5, align 8
  %8 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @v4l2_type_names, align 4
  %12 = call i32 @prt_names(i32 %10, i32 %11)
  %13 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_cont(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %20, i32 %24, i32 %28, i32 %32, i32 %36, i32 %40, i32 %44, i32 %48, i32 %52)
  ret void
}

declare dso_local i32 @pr_cont(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @prt_names(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
