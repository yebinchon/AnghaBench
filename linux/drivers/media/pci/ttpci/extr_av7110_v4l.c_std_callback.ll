; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_std_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_std_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64 }
%struct.saa7146_standard = type { i32 }
%struct.av7110 = type { i32 }

@V4L2_STD_PAL = common dso_local global i32 0, align 4
@AV7110_VIDEO_MODE_PAL = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@AV7110_VIDEO_MODE_NTSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_standard*)* @std_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_callback(%struct.saa7146_dev* %0, %struct.saa7146_standard* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_standard*, align 8
  %6 = alloca %struct.av7110*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_standard* %1, %struct.saa7146_standard** %5, align 8
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %8 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.av7110*
  store %struct.av7110* %10, %struct.av7110** %6, align 8
  %11 = load %struct.saa7146_standard*, %struct.saa7146_standard** %5, align 8
  %12 = getelementptr inbounds %struct.saa7146_standard, %struct.saa7146_standard* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @V4L2_STD_PAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @AV7110_VIDEO_MODE_PAL, align 4
  %19 = load %struct.av7110*, %struct.av7110** %6, align 8
  %20 = getelementptr inbounds %struct.av7110, %struct.av7110* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.av7110*, %struct.av7110** %6, align 8
  %22 = load %struct.av7110*, %struct.av7110** %6, align 8
  %23 = getelementptr inbounds %struct.av7110, %struct.av7110* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @av7110_set_vidmode(%struct.av7110* %21, i32 %24)
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.saa7146_standard*, %struct.saa7146_standard** %5, align 8
  %28 = getelementptr inbounds %struct.saa7146_standard, %struct.saa7146_standard* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V4L2_STD_NTSC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load i32, i32* @AV7110_VIDEO_MODE_NTSC, align 4
  %35 = load %struct.av7110*, %struct.av7110** %6, align 8
  %36 = getelementptr inbounds %struct.av7110, %struct.av7110* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.av7110*, %struct.av7110** %6, align 8
  %38 = load %struct.av7110*, %struct.av7110** %6, align 8
  %39 = getelementptr inbounds %struct.av7110, %struct.av7110* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @av7110_set_vidmode(%struct.av7110* %37, i32 %40)
  br label %43

42:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %45

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %17
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @av7110_set_vidmode(%struct.av7110*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
