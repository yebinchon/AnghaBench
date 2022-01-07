; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [248 x i8] c"type=bt-656/1120, interlaced=%u, pixelclock=%llu, width=%u, height=%u, polarities=0x%x, hfrontporch=%u, hsync=%u, hbackporch=%u, vfrontporch=%u, vsync=%u, vbackporch=%u, il_vfrontporch=%u, il_vsync=%u, il_vbackporch=%u, standards=0x%x, flags=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"type=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_dv_timings(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_dv_timings*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_dv_timings*
  store %struct.v4l2_dv_timings* %7, %struct.v4l2_dv_timings** %5, align 8
  %8 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %77 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 15
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i32, ...) @pr_cont(i8* getelementptr inbounds ([248 x i8], [248 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23, i32 %27, i32 %31, i32 %35, i32 %39, i32 %43, i32 %47, i32 %51, i32 %55, i32 %59, i32 %63, i32 %67, i32 %71, i32 %75)
  br label %82

77:                                               ; preds = %2
  %78 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32, ...) @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %11
  ret void
}

declare dso_local i32 @pr_cont(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
