; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deinterlace_fmt = type { i32, i64 }
%struct.v4l2_format = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NUM_FORMATS = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.deinterlace_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.deinterlace_fmt* (%struct.v4l2_format*)* @find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.deinterlace_fmt* @find_format(%struct.v4l2_format* %0) #0 {
  %2 = alloca %struct.deinterlace_fmt*, align 8
  %3 = alloca %struct.v4l2_format*, align 8
  %4 = alloca %struct.deinterlace_fmt*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_format* %0, %struct.v4l2_format** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NUM_FORMATS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load %struct.deinterlace_fmt*, %struct.deinterlace_fmt** @formats, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.deinterlace_fmt, %struct.deinterlace_fmt* %11, i64 %13
  store %struct.deinterlace_fmt* %14, %struct.deinterlace_fmt** %4, align 8
  %15 = load %struct.deinterlace_fmt*, %struct.deinterlace_fmt** %4, align 8
  %16 = getelementptr inbounds %struct.deinterlace_fmt, %struct.deinterlace_fmt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %10
  %24 = load %struct.deinterlace_fmt*, %struct.deinterlace_fmt** %4, align 8
  %25 = getelementptr inbounds %struct.deinterlace_fmt, %struct.deinterlace_fmt* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23, %10
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %6

38:                                               ; preds = %33, %6
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @NUM_FORMATS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.deinterlace_fmt* null, %struct.deinterlace_fmt** %2, align 8
  br label %48

43:                                               ; preds = %38
  %44 = load %struct.deinterlace_fmt*, %struct.deinterlace_fmt** @formats, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.deinterlace_fmt, %struct.deinterlace_fmt* %44, i64 %46
  store %struct.deinterlace_fmt* %47, %struct.deinterlace_fmt** %2, align 8
  br label %48

48:                                               ; preds = %43, %42
  %49 = load %struct.deinterlace_fmt*, %struct.deinterlace_fmt** %2, align 8
  ret %struct.deinterlace_fmt* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
