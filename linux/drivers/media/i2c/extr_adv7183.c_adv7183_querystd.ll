; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_querystd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7183 = type { i32 }

@ADV7183_IN_CTRL = common dso_local global i32 0, align 4
@ADV7183_STATUS_1 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*)* @adv7183_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7183_querystd(%struct.v4l2_subdev* %0, i32* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.adv7183*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.adv7183* @to_adv7183(%struct.v4l2_subdev* %7)
  store %struct.adv7183* %8, %struct.adv7183** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = load i32, i32* @ADV7183_IN_CTRL, align 4
  %11 = call i32 @adv7183_read(%struct.v4l2_subdev* %9, i32 %10)
  %12 = and i32 %11, 15
  store i32 %12, i32* %6, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = load i32, i32* @ADV7183_IN_CTRL, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @adv7183_write(%struct.v4l2_subdev* %13, i32 %14, i32 %15)
  %17 = call i32 @mdelay(i32 10)
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = load i32, i32* @ADV7183_STATUS_1, align 4
  %20 = call i32 @adv7183_read(%struct.v4l2_subdev* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 7
  switch i32 %23, label %64 [
    i32 0, label %24
    i32 1, label %29
    i32 2, label %34
    i32 3, label %39
    i32 4, label %44
    i32 5, label %49
    i32 6, label %54
    i32 7, label %59
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @V4L2_STD_NTSC, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %67

29:                                               ; preds = %2
  %30 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %67

34:                                               ; preds = %2
  %35 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %67

39:                                               ; preds = %2
  %40 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %67

44:                                               ; preds = %2
  %45 = load i32, i32* @V4L2_STD_PAL, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %67

49:                                               ; preds = %2
  %50 = load i32, i32* @V4L2_STD_SECAM, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %67

54:                                               ; preds = %2
  %55 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %67

59:                                               ; preds = %2
  %60 = load i32, i32* @V4L2_STD_SECAM, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %67

64:                                               ; preds = %2
  %65 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %66 = load i32*, i32** %4, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %59, %54, %49, %44, %39, %34, %29, %24
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %69 = load %struct.adv7183*, %struct.adv7183** %5, align 8
  %70 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @adv7183_s_std(%struct.v4l2_subdev* %68, i32 %71)
  ret i32 0
}

declare dso_local %struct.adv7183* @to_adv7183(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7183_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @adv7183_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @adv7183_s_std(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
