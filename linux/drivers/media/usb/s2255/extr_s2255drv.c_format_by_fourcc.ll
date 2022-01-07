; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_format_by_fourcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_format_by_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_fmt = type { i32 }

@formats = common dso_local global %struct.s2255_fmt* null, align 8
@jpeg_enable = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MJPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s2255_fmt* (i32)* @format_by_fourcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s2255_fmt* @format_by_fourcc(i32 %0) #0 {
  %2 = alloca %struct.s2255_fmt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %56, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.s2255_fmt*, %struct.s2255_fmt** @formats, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.s2255_fmt* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %59

10:                                               ; preds = %5
  %11 = load %struct.s2255_fmt*, %struct.s2255_fmt** @formats, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %11, i64 %13
  %15 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 -1, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %56

19:                                               ; preds = %10
  %20 = load i32, i32* @jpeg_enable, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = load %struct.s2255_fmt*, %struct.s2255_fmt** @formats, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %23, i64 %25
  %27 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V4L2_PIX_FMT_JPEG, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = load %struct.s2255_fmt*, %struct.s2255_fmt** @formats, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %32, i64 %34
  %36 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @V4L2_PIX_FMT_MJPEG, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31, %22
  br label %56

41:                                               ; preds = %31, %19
  %42 = load %struct.s2255_fmt*, %struct.s2255_fmt** @formats, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %42, i64 %44
  %46 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.s2255_fmt*, %struct.s2255_fmt** @formats, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %51, i64 %53
  store %struct.s2255_fmt* %54, %struct.s2255_fmt** %2, align 8
  br label %60

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %40, %18
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %5

59:                                               ; preds = %5
  store %struct.s2255_fmt* null, %struct.s2255_fmt** %2, align 8
  br label %60

60:                                               ; preds = %59, %50
  %61 = load %struct.s2255_fmt*, %struct.s2255_fmt** %2, align 8
  ret %struct.s2255_fmt* %61
}

declare dso_local i32 @ARRAY_SIZE(%struct.s2255_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
