; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_go7007_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_go7007_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i32 }

@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@GO7007_STD_PAL = common dso_local global i32 0, align 4
@GO7007_STD_NTSC = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*)* @go7007_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_s_std(%struct.go7007* %0) #0 {
  %2 = alloca %struct.go7007*, align 8
  store %struct.go7007* %0, %struct.go7007** %2, align 8
  %3 = load %struct.go7007*, %struct.go7007** %2, align 8
  %4 = getelementptr inbounds %struct.go7007, %struct.go7007* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @V4L2_STD_625_50, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @GO7007_STD_PAL, align 4
  %11 = load %struct.go7007*, %struct.go7007** %2, align 8
  %12 = getelementptr inbounds %struct.go7007, %struct.go7007* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.go7007*, %struct.go7007** %2, align 8
  %14 = getelementptr inbounds %struct.go7007, %struct.go7007* %13, i32 0, i32 1
  store i32 25025, i32* %14, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @GO7007_STD_NTSC, align 4
  %17 = load %struct.go7007*, %struct.go7007** %2, align 8
  %18 = getelementptr inbounds %struct.go7007, %struct.go7007* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.go7007*, %struct.go7007** %2, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 1
  store i32 30000, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %9
  %22 = load %struct.go7007*, %struct.go7007** %2, align 8
  %23 = getelementptr inbounds %struct.go7007, %struct.go7007* %22, i32 0, i32 2
  %24 = load i32, i32* @video, align 4
  %25 = load i32, i32* @s_std, align 4
  %26 = load %struct.go7007*, %struct.go7007** %2, align 8
  %27 = getelementptr inbounds %struct.go7007, %struct.go7007* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @call_all(i32* %23, i32 %24, i32 %25, i32 %28)
  %30 = load %struct.go7007*, %struct.go7007** %2, align 8
  %31 = call i32 @set_capture_size(%struct.go7007* %30, i32* null, i32 0)
  ret i32 0
}

declare dso_local i32 @call_all(i32*, i32, i32, i32) #1

declare dso_local i32 @set_capture_size(%struct.go7007*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
