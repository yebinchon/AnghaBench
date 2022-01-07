; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7183 = type { i32 }

@ADV7183_IN_CTRL = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @adv7183_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7183_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adv7183*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.adv7183* @to_adv7183(%struct.v4l2_subdev* %8)
  store %struct.adv7183* %9, %struct.adv7183** %6, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = load i32, i32* @ADV7183_IN_CTRL, align 4
  %12 = call i32 @adv7183_read(%struct.v4l2_subdev* %10, i32 %11)
  %13 = and i32 %12, 15
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, 96
  store i32 %19, i32* %7, align 4
  br label %82

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, 112
  store i32 %26, i32* %7, align 4
  br label %81

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, 144
  store i32 %33, i32* %7, align 4
  br label %80

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, 160
  store i32 %40, i32* %7, align 4
  br label %79

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, 192
  store i32 %47, i32* %7, align 4
  br label %78

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @V4L2_STD_PAL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, 128
  store i32 %55, i32* %7, align 4
  br label %77

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @V4L2_STD_NTSC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, 80
  store i32 %63, i32* %7, align 4
  br label %76

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @V4L2_STD_SECAM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, 224
  store i32 %71, i32* %7, align 4
  br label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %90

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %61
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77, %45
  br label %79

79:                                               ; preds = %78, %38
  br label %80

80:                                               ; preds = %79, %31
  br label %81

81:                                               ; preds = %80, %24
  br label %82

82:                                               ; preds = %81, %17
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %84 = load i32, i32* @ADV7183_IN_CTRL, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @adv7183_write(%struct.v4l2_subdev* %83, i32 %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %89 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %82, %72
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.adv7183* @to_adv7183(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7183_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @adv7183_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
