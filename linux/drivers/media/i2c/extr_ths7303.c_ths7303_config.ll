; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ths7303_state = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@THS7303_CHANNEL_1 = common dso_local global i32 0, align 4
@THS7303_CHANNEL_2 = common dso_local global i32 0, align 4
@THS7303_CHANNEL_3 = common dso_local global i32 0, align 4
@THS7303_FILTER_MODE_1080P = common dso_local global i32 0, align 4
@THS7303_FILTER_MODE_720P_1080I = common dso_local global i32 0, align 4
@THS7303_FILTER_MODE_480P_576P = common dso_local global i32 0, align 4
@THS7303_FILTER_MODE_480I_576I = common dso_local global i32 0, align 4
@THS7303_FILTER_MODE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ths7303_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ths7303_config(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.ths7303_state*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.ths7303_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.ths7303_state* %7, %struct.ths7303_state** %4, align 8
  %8 = load %struct.ths7303_state*, %struct.ths7303_state** %4, align 8
  %9 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %1
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = load i32, i32* @THS7303_CHANNEL_1, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %16 = load i32, i32* @THS7303_CHANNEL_1, align 4
  %17 = call i32 @ths7303_read(%struct.v4l2_subdev* %15, i32 %16)
  %18 = and i32 %17, 248
  %19 = call i32 @ths7303_write(%struct.v4l2_subdev* %13, i32 %14, i32 %18)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = load i32, i32* @THS7303_CHANNEL_2, align 4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %23 = load i32, i32* @THS7303_CHANNEL_2, align 4
  %24 = call i32 @ths7303_read(%struct.v4l2_subdev* %22, i32 %23)
  %25 = and i32 %24, 248
  %26 = call i32 @ths7303_write(%struct.v4l2_subdev* %20, i32 %21, i32 %25)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %28 = load i32, i32* @THS7303_CHANNEL_3, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %30 = load i32, i32* @THS7303_CHANNEL_3, align 4
  %31 = call i32 @ths7303_read(%struct.v4l2_subdev* %29, i32 %30)
  %32 = and i32 %31, 248
  %33 = call i32 @ths7303_write(%struct.v4l2_subdev* %27, i32 %28, i32 %32)
  store i32 0, i32* %2, align 4
  br label %82

34:                                               ; preds = %1
  %35 = load %struct.ths7303_state*, %struct.ths7303_state** %4, align 8
  %36 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 120000000
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %42 = load i32, i32* @THS7303_FILTER_MODE_1080P, align 4
  %43 = call i32 @ths7303_setval(%struct.v4l2_subdev* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %80

44:                                               ; preds = %34
  %45 = load %struct.ths7303_state*, %struct.ths7303_state** %4, align 8
  %46 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 70000000
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %52 = load i32, i32* @THS7303_FILTER_MODE_720P_1080I, align 4
  %53 = call i32 @ths7303_setval(%struct.v4l2_subdev* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %79

54:                                               ; preds = %44
  %55 = load %struct.ths7303_state*, %struct.ths7303_state** %4, align 8
  %56 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 20000000
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %62 = load i32, i32* @THS7303_FILTER_MODE_480P_576P, align 4
  %63 = call i32 @ths7303_setval(%struct.v4l2_subdev* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %78

64:                                               ; preds = %54
  %65 = load %struct.ths7303_state*, %struct.ths7303_state** %4, align 8
  %66 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %71 = load i32, i32* @THS7303_FILTER_MODE_480I_576I, align 4
  %72 = call i32 @ths7303_setval(%struct.v4l2_subdev* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %77

73:                                               ; preds = %64
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %75 = load i32, i32* @THS7303_FILTER_MODE_DISABLE, align 4
  %76 = call i32 @ths7303_setval(%struct.v4l2_subdev* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %60
  br label %79

79:                                               ; preds = %78, %50
  br label %80

80:                                               ; preds = %79, %40
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.ths7303_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ths7303_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @ths7303_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ths7303_setval(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
